#!perl -T

use Test::More tests => 6;

use_ok('Number::Bytes::Human', 'format_bytes');

is(format_bytes(0, si => 1), '0', "0 still turns to '0' on SI with base 1024");
is(format_bytes(0, si => 1, bs => 1000), '0', "0 still turns to '0' on SI with base 1000");

is(format_bytes(1000, si => 1, bs => 1000), '1.0kB', "1000 turns to '1.0kB' on SI with base 1000");
is(format_bytes(10E6, si => 1, bs => 1000), '10MB', "10E6 turns to '10MB' on SI with base 1000");

is(format_bytes(1000, si => 1), '1000iB', "1000 turns to '100iB' on SI with base 1024");


