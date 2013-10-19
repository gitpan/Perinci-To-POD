
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
    "bin/peri-pkg-doc",
    "bin/peri-doc"
  ],
  "LICENSE" => "perl",
  "NAME" => "Perinci::To::POD",
  "PREREQ_PM" => {
    "File::Which" => 0,
    "Locale::Maketext::Lexicon::Gettext" => 0,
    "Log::Any" => 0,
    "Markdown::Pod" => 0,
    "Moo" => 0,
    "Perinci::CmdLine" => "0.80",
    "Perinci::Sub::To::POD" => "0.04",
    "Perinci::To::PackageBase" => "0.20",
    "Perinci::To::PackageBase::I18N" => "0.20",
    "Perinci::To::PackageBase::I18N::en" => "0.20",
    "Perinci::To::Text" => "0.22",
    "Riap" => "v1.1.8",
    "Rinci" => "v1.1.36"
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.35",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



