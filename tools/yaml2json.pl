#!/usr/bin/perl

=pod

TODO: Fix the Boolean etc. value type 2 string bug.

=cut

use File::Basename;
use JSON;
use YAML::XS qw(LoadFile DumpFile);

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );
my $config      =   LoadFile($here_path.'/config.yaml') or die "¡No config.yaml file in this path!";

foreach (qw(yaml json md)) {
  $config->{$_.'_path'} =   join('/', $here_path, $config->{$_.'_path_rel'});  
  mkdir $config->{$_.'_path'};
}

opendir DIR, $config->{'yaml_path'};
my @yaml_files  =		grep{ /ya?ml$/ } readdir(DIR);
close DIR;

foreach (@yaml_files) {

  my $file_name =   $_;
  $file_name    =~   s/\.ya?ml$//i;
  
  foreach (qw(yaml json md)) {
    $config->{$_.'_file'} =   join('/', $config->{$_.'_path'}, $file_name.'.'.$_);  
  }
 
  my $data      =   LoadFile($config->{yaml_file});
  
  print "Reading YAML file \"$config->{yaml_file}\"\n";
  
  open  (FILE, ">", $config->{json_file}) || warn 'output file '.$config->{json_file}.' could not be created.';
  print FILE  JSON::XS->new->pretty( 1 )->encode( $data )."\n";
  close FILE;
  
  my $example   =   {};
  my $example_file  =   $config->{json_file};
  $example_file =~   s/\.json$/_example.json/i;
  my $markdown;
  
  foreach (sort @{ $data->{attributes} }) {
    if ($_->{example} =~ /^\d+?(?:\.\d+?)?$/i) {
      $example->{$_->{name}} =   1 * $_->{example} }
    else {
      $example->{$_->{name}} =   $_->{example} } 

  $markdown     .=  <<END;  

### $_->{name}

$_->{description}

* example: `$example->{$_->{name}}`
END

  }
  
  foreach my $class_name (sort keys %{ $data->{classes} }) {
    foreach (@{ $data->{classes}->{$class_name}->{attributes} }) {
 #print $_->{type}.' - '.$_->{example}."\n";
    if ($_->{type} =~ /bool/i) {
      $example->{$class_name}->{$_->{name}} =   !! $_->{example} }
    elsif ($_->{example} =~ /^\d+?(?:\.\d+?)?$/i) {
      $example->{$class_name}->{$_->{name}} =   1 * $_->{example} }
    else {
      $example->{$class_name}->{$_->{name}} =   $_->{example} } 
     
  }}
  
  open  (FILE, ">", $example_file) || warn 'output file '.$example_file.' could not be created.';
  print FILE  JSON::XS->new->pretty( 1 )->encode( $example )."\n";
  close FILE;

  open  (FILE, ">", $config->{md_file}) || warn 'output file '. $config->{md_file}.' could not be created.';
  print FILE  $markdown."\n";
  close FILE;
  
}

