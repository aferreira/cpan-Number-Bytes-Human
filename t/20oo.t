#!perl -T

use Test::More tests => 7;

use_ok('Number::Bytes::Human');

# testing the OO way

my $human = Number::Bytes::Human->new(bs => 1000, si => 1);
isa_ok($human, 'Number::Bytes::Human');

is($human->format(1E7), '10MB');
is($human->parse('10MB'), 1E7);

is($human->set_options(zero => '-'), $human);
is($human->format(0), '-');
is($human->parse('-'), 0);

