
use strict;
use warnings;

 BEGIN { require 5.8.0; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Produce formatted reports in PostScript',
  'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'PostScript-Report',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'PostScript::Report',
  'PREREQ_PM' => {
    'File::Spec' => '0',
    'List::Util' => '0',
    'Moose' => '0.90',
    'MooseX::AttributeTree' => '0.02',
    'MooseX::Types' => '0',
    'PostScript::File' => '2.00',
    'Scalar::Util' => '0',
    'String::RewritePrefix' => '0',
    'namespace::autoclean' => '0'
  },
  'VERSION' => '0.07',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


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



