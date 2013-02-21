#!perl -T

use Test::More tests => 17;

use_ok('Number::Bytes::Human', 'format_bytes');

our @TESTS = (
  '0' => '0',
  '1' => '1.0',   #'1', mafoo - with the default being precision 1 with cutoff digits 1
  '-1' => '-1.0', #'-1', mafoo - with the default being precision 1 with cutoff digits 1
  '10' => '10',
  '100' => '100',
  '400' => '400',
  '500' => '500',
  '600' => '600',
  '900' => '900',
  '1000' => '1.0k',
  '1001' => '1.1k',
  '2000' => '2.0k',
  '10*1000' => '10k',
  '500*1000' => '500k',
  '1000*1000' => '1.0M',
);

is(format_bytes(undef), undef, "undef is undef");

while (my ($exp, $expected) = splice @TESTS, 0, 2) {
  $num = eval $exp;
  is(format_bytes($num, bs => 1000), $expected, "$exp is $expected");
}
