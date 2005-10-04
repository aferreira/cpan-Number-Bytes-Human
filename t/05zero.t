
use Test::More tests => 6;

use_ok('Number::Bytes::Human', 'format_bytes');

is(format_bytes(0), '0', "0 turns to '0' by default");
is(format_bytes(0, zero => '-'), '-', "0 turns to '-'");
is(format_bytes(0, zero => '*'), '*', "0 turns to '*'");
is(format_bytes(0, zero => '0%S', suffixes => [ 'B' ]), '0B', "0 turns to '0B'");

# zero => undef
is(format_bytes(0, zero => undef, suffixes => [ ' B' ]), '0 B', "0 turns to '0 B'");

