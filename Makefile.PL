
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'PostScript-Report',
  NAME      => 'PostScript::Report',
  AUTHOR    => "Christopher\ J\.\ Madsen\ \<perl\@cjmweb\.net\>",
  ABSTRACT  => "Produce\ formatted\ reports\ in\ PostScript",
  VERSION   => '0.04',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Scalar::Util" => '0',
    "namespace::autoclean" => '0',
    "File::Spec" => '0',
    "String::RewritePrefix" => '0',
    "MooseX::AttributeTree" => '0',
    "List::Util" => '0',
    "MooseX::AttributeHelpers" => '0',
    "MooseX::Types" => '0',
    "Font::AFM" => '0',
    "PostScript::File" => '1.05',
    "Moose" => '0.65',
  },
  test => {TESTS => 't/*.t'}
);

