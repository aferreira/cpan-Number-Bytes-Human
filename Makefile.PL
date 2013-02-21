#!/usr/bin/perl
use 5.006;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;
my $EXTRA_META = <<YAML;

recommends:
    Test::Pod:                     1.18
    #bignum:                        0
no_index: ~
installdirs: site

YAML

WriteMakefile(
    NAME              => 'Number::Bytes::Human',
    VERSION_FROM      => 'Human.pm', # finds $VERSION
    PREREQ_PM         => {
        POSIX                    => 0,
        Carp                     => 0,
        Test::More               => 0,
    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'Human.pm', # retrieve abstract from module
       AUTHOR         => 'A. R. Ferreira <ferreira@cpan.org>',
    ) : ()),
    ($EUMM_VERSION >= 6.31 ? (
        LICENSE       => 'perl',
        EXTRA_META    => $EXTRA_META
    ) : ()),
);
