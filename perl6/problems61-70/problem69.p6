use Terminal::Spinners;

sub get-totient-val($num) {
    return $num/(((1..$num).hyper.grep({($num gcd $_) == 1})).elems);
}
my $ans = 1;
(510_508..512_000).map({
    say $_;
   my $res = get-totient-val($_);
    if $res > $ans {
        $ans = $_;
    }
});

say $ans;
