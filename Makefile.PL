
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Generate POD documentation for a package from Rinci metadata",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Perinci-To-POD",
  "EXE_FILES" => [
    "bin/peri-pkg-doc"
  ],
  "LICENSE" => "perl",
  "NAME" => "Perinci::To::POD",
  "PREREQ_PM" => {
    "File::Which" => 0,
    "Locale::Maketext::Lexicon::Gettext" => 0,
    "Log::Any" => 0,
    "Markdown::Pod" => 0,
    "Moo" => 0,
    "Perinci::Access" => 0,
    "Perinci::CmdLine" => "0.80",
    "Perinci::Sub::To::POD" => "0.07",
    "Perinci::Sub::Util" => 0,
    "Perinci::To::PackageBase" => "0.27",
    "Perinci::To::PackageBase::I18N" => "0.27",
    "Perinci::To::PackageBase::I18N::en" => "0.27",
    "Perinci::To::Text" => "0.27",
    "Riap" => "v1.1.8",
    "Rinci" => "v1.1.36"
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.37",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "File::Spec" => 0,
  "File::Which" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Locale::Maketext::Lexicon::Gettext" => 0,
  "Log::Any" => 0,
  "Markdown::Pod" => 0,
  "Moo" => 0,
  "Perinci::Access" => 0,
  "Perinci::CmdLine" => "0.80",
  "Perinci::Sub::To::POD" => "0.07",
  "Perinci::Sub::Util" => 0,
  "Perinci::To::PackageBase" => "0.27",
  "Perinci::To::PackageBase::I18N" => "0.27",
  "Perinci::To::PackageBase::I18N::en" => "0.27",
  "Perinci::To::Text" => "0.27",
  "Riap" => "v1.1.8",
  "Rinci" => "v1.1.36",
  "Test::More" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



