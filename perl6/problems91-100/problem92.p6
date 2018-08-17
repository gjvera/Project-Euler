#!/usr/local/bin/perl6
use Terminal::Spinners;
my $bar = Bar.new;
$bar.show: 0e0;
my $count = 0;
my $temp;
sub get-next-num($num) {
    return [+] $num.comb.map(* ** 2);
}
(1..10_000_000).map({
    my $percent = (($_ / 10_000_000) * 100).Num;
    sleep 0.0002;
    $bar.show: $percent;
    $temp = get-next-num($_);
    while $temp != 89 and $temp != 1 {
        $temp = get-next-num($temp);
    } 
    $count += 1 if $temp == 89;
});
say "\n$count[]";
