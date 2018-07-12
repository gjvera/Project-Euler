use Terminal::Spinners;
my $bar = Bar.new;
$bar.show: 0e0;
my @primes = (1000..1000000).grep({$_.is-prime; my $percent = (($_ / 1_000_000) * 100).Num; sleep 0.0002; $bar.show: $percent});
my @sum-primes = (1..*).grep(*.is-prime);
my $sum;
my $ans = (ans => 0);
my $num-elems;
for @primes -> $prime {
    say $prime;
    $sum = 0;
    $num-elems = 0;
    for @sum-primes -> $s-p {
        $sum += $s-p;
        $num-elems += 1; 
        last if $sum >= $prime;
    }
    if $sum > $prime {
        for @sum-primes -> $s-p {
            $sum -= $s-p;
            $num-elems -= 1;
            last if $sum <= $prime; 
        }
    }
    if $sum == $prime {
        if $num-elems > $ans.value {
            $ans = ($prime => $num-elems);
        }
    }
}

say $ans;

