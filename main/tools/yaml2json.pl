#!/usr/bin/perl

=pod

TODO: Fix the Boolean etc. value type 2 string bug.

=cut

use File::Basename;
use JSON;
use YAML::XS qw(LoadFile DumpFile);
use Data::Dumper;

binmode STDOUT, ":utf8";

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );
our $config     =   LoadFile($here_path.'/config.yaml') or die "¡No config.yaml file in this path!";

foreach ( @{ $config->{file_types} } ) {
  $config->{$_.'_path'} =   join('/', $here_path, $config->{$_.'_path_rel'});
  mkdir $config->{$_.'_path'};
}

opendir DIR, $config->{'yaml_path'};
foreach (grep{ /ya?ml$/ } readdir(DIR)) {
  _process_yaml($_);
}
close DIR;

exit;

################################################################################
################################################################################
################################################################################
# subs
################################################################################
################################################################################
################################################################################

sub _process_yaml {

  my $file_name =   shift;
  my $yaml_link =   $config->{'yaml_path_rel'}.'/'.$file_name;
  $file_name    =~   s/\.ya?ml$//i;

  foreach ( @{ $config->{file_types} } ) {
    $config->{$_.'_file'} =   join('/', $config->{$_.'_path'}, $file_name.'.'.$_);
  }

  print "Reading YAML file \"$config->{yaml_file}\"\n";

  my $data    =   LoadFile($config->{yaml_file});

  open  (FILE, ">", $config->{json_file}) || warn 'output file '.$config->{json_file}.' could not be created.';
  print FILE  JSON::XS->new->pretty( 1 )->encode( $data )."\n";
  close FILE;

  my $markdown  =   <<END;
# $data->{info}->{title}

$data->{info}->{description}

The schema definitions are done in the [YAML file]($yaml_link).

END

  my %attr    =   %{ $data->{definitions} };

  foreach my $class (sort keys %attr) {

    my $example   =   {};
    my $example_file  =   $config->{json_path}.'/'.$file_name.'-'.$class.'-example.json';

    my $class_md  =  <<END;
## $class

<h3>Properties of the <i>$class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
END
    my $prop_md;

    if ($attr{$class}->{description}) {
      $class_md .=  $attr{$class}->{description}."\n"}

    foreach my $property (sort keys %{ $attr{$class}->{properties} }) {

      $example->{$property}  =  $attr{$class}->{properties}->{$property}->{example};
      my $md_example  =   _reformat_example($attr{$class}->{properties}->{$property}->{example});
      $class_md   .=  <<END;

  <tr>
    <td>$property</td>
    <td>$attr{$class}->{properties}->{$property}->{type}</td>
    <td>$attr{$class}->{properties}->{$property}->{format}</td>
    <td>$attr{$class}->{properties}->{$property}->{description}</td>
  </tr>
END
      $prop_md    .=  <<END;

--------------------------------------------------------------------------------
### $property

$attr{$class}->{properties}->{$property}->{description}

#### Example

```
'$property' : $md_example
```
END

    if ($attr{$class}->{properties}->{$property}->{queries}) {
      $prop_md   .=  '
#### Queries:';
      foreach my $query (@{$attr{$class}->{properties}->{$property}->{queries}}) {

        $prop_md .=  <<END;

$query->{description}
```
$query->{query}
```

END

    }}}

    $class_md .=  <<END;
</table>

<h3>Extended notes and examples on the <i>$class</i> properties</h3>

END
    $markdown .=  $class_md;
    $markdown .=  $prop_md;

    my $printout    =   JSON::XS->new->pretty( 1 )->encode( $example )."\n";
    open  (FILE, ">", $example_file) || warn 'output file '.$example_file.' could not be created.';
    print FILE  _clean_numbers_booleans_from_text($printout);
    close FILE;

  }


  open  (FILE, ">", $config->{md_file}) || warn 'output file '. $config->{md_file}.' could not be created.';
  print FILE  _clean_numbers_booleans_from_text($markdown)."\n";
  close FILE;

}

sub _reformat_example {

  my $example   =   shift;
  my $md_example    =   Dumper($example);
  $md_example	=~  s/\$VAR1 \= //;
  $md_example	=~  s/\n {8}/\n/g;
  $md_example	=~  s/\;//g;
  $md_example	=~  s/\n$//;
  if (ref( $example) eq "ARRAY" || ref( $example) eq "HASH") {
    $md_example	=		$md_example;
  } else {
    $md_example	=~  s/\'//g;
    $md_example	=		'"'.$md_example.'"' }

  return $md_example;

}

sub _clean_numbers_booleans_from_text {

  my $printout  =   shift;

  my @cleaned;

  foreach my $line (split("\n", $printout)) {
    $line       =~  s/\=\>/:/;
    $line       =~  s/\: [\'\"](\d+?(?:\.\d+?)?)[\'\"]/: $1/;


    push(@cleaned, $line);
  }

  return join("\n", @cleaned);

}
