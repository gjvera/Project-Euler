my $line-no = 0;
my @numbers = slurp.lines.split(",").words.rotor(2);
my $res;
my $max = 0;
for @numbers -> @nums {
    $line-no += 1;
    say $line-no;
    my $power = @nums[0] ** @nums[1];
    if $power > $max { $max = $power; $res = $line-no; } ;
}

say $res;
