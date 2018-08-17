my $upper-bound = 1_000_000;
my @d = (2..1_000_000);
my $count = 0;
for @d -> $each-d {
    say $each-d;
    my @n = (1..^$each-d);
    @n.map({ if $_ gcd $each-d == 1 { $count += 1 } });
}
say $count;
