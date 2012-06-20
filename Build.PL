
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Generate POD documentation from Rinci package metadata",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-To-POD",
  "dist_version" => "0.25",
  "license" => "perl",
  "module_name" => "Perinci::To::POD",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Which" => 0,
    "Markdown::Pod" => 0,
    "Perinci::CmdLine" => "0.42",
    "Perinci::To::PackageBase" => "0.13",
    "Riap" => "1.1.8",
    "Rinci" => "1.1.10",
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/peri-doc"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
