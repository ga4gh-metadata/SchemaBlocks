#!/usr/bin/perl

=pod

TODO: Fix the Boolean etc. value type 2 string bug.

=cut

use File::Basename;
use JSON;
use YAML::XS qw(LoadFile DumpFile);

my $path_of_this_module = File::Basename::dirname( eval { ( caller() )[1] } );
my $yaml_path   =   $path_of_this_module.'/../yaml';
my $json_path   =   $path_of_this_module.'/../json';
mkdir $json_path;

opendir DIR, $yaml_path;
my @yaml_files  =		grep{ /ya?ml$/ } readdir(DIR);
close DIR;

foreach (@yaml_files) {

  my $file_name =   $_;
  my $data      =   LoadFile($yaml_path.'/'.$file_name);

  print "Reading YAML file \"$file_name\"\n";
  
  $file_name    =~  s/\.ya?ml$/.json/;

  open  (FILE, ">", $json_path.'/'.$file_name) || warn 'output file '.$file_name.' could not be created.';
  print FILE  JSON::XS->new->pretty( 1 )->encode( $data )."\n";
  close FILE;
  
  $file_name    =~  s/\.json/_example.json/;
  my $example   =   {};
  
  foreach (@{ $data->{attributes} }) {
    if ($_->{example} =~ /^\d+?(?:\.\d+?)?$/i) {
      $example->{$_->{name}} =   1 * $_->{example} }
    else {
      $example->{$_->{name}} =   $_->{example} } 
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
  
  open  (FILE, ">", $json_path.'/'.$file_name) || warn 'output file '.$file_name.' could not be created.';
  print FILE  JSON::XS->new->pretty( 1 )->encode( $example )."\n";
  close FILE;
  
}

