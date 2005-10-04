
use 5.006;
use ExtUtils::MakeMaker;

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
       NO_META           => 1) : ()),
);
