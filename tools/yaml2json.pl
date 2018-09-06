#!/usr/bin/perl

=pod


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
  print FILE  JSON::XS->new->pretty( 1 )->allow_blessed->convert_blessed->encode( $data )."\n";
  close FILE;

}

