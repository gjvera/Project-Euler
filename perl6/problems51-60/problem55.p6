my $num-of-lychrel = 0;
my $num;
my $is-lychrel;
my $count = 0;
(10..10000).map({
    my $num = $_;
    $is-lychrel = True;
    $count = 0;
    while $count < 55 {
        $num = $num + $num.flip;
        if $num == $num.flip { $is-lychrel = False } ;
        $count += 1;
    }
    if $is-lychrel { $num-of-lychrel += 1 } ;
});
say $num-of-lychrel;
