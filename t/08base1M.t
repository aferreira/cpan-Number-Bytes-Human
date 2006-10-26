#!perl -T

use Test::More tests => 14;

use_ok('Number::Bytes::Human', 'format_bytes');

our @TESTS = (
  '0' => '0',
  '1' => '1',
  '-1' => '-1',
  '10' => '10',
  '100' => '100',
  '400' => '400',
  '1000' => '1000',
  '2000' => '2000',
  '1_000_000' => '1000000',
  '1_024_000' => '1.0M',
  '1_024_001' => '1.1M',
#  '1.44*1_024_001' => '1.44M', # TODO
  '1_024_000*1_024_000' => '1.0T',
);

is(format_bytes(undef), undef, "undef is undef");

while (my ($exp, $expected) = splice @TESTS, 0, 2) {
  $num = eval $exp;
  is(format_bytes($num, bs => 1_024_000), $expected, "$exp is $expected");
}

