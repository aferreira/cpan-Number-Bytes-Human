#!perl -T

use Test::More tests => 5;

use_ok('Number::Bytes::Human');

# testing the OO way

my $human = new Number::Bytes::Human(bs => 1000, si => 1);
isa_ok($human, 'Number::Bytes::Human');

is($human->format(1E7), '10MB');

is($human->set_options(zero => '-'), $human);

is($human->format(0), '-');

