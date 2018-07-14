my @primes = (1..*).grep(*.is-prime);
my $ans = 1;
for @primes -> $prime { last if $ans * $prime > 1_000_000 ; $ans *= $prime; }
say $ans
