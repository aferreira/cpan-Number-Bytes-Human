
use Test::More tests => 4;

use_ok('Number::Bytes::Human', 'format_bytes');

is(format_bytes(0, bs => 1000, unit => 'bps'), '0', "0 is still '0'");
is(format_bytes(200, bs => 1000, unit => 'bps'), '200bps', "200 is '200bps'"); 
is(format_bytes(2000, bs => 1000, unit => 'bps'), '2.0Kbps', "2000 is '2.0Kbps'"); 
