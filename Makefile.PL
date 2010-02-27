
use strict;
use warnings;

 BEGIN { require 5.8.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'PostScript::Report',
                       'DISTNAME' => 'PostScript-Report',
                       'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
                       'ABSTRACT' => 'Produce formatted reports in PostScript',
                       'EXE_FILES' => [],
                       'VERSION' => '0.05',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'List::Util' => '0',
                                        'Scalar::Util' => '0',
                                        'namespace::autoclean' => '0',
                                        'MooseX::Types' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'File::Spec' => '0',
                                        'String::RewritePrefix' => '0',
                                        'MooseX::AttributeTree' => '0',
                                        'PostScript::File' => '2.00',
                                        'Moose' => '0.90'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



