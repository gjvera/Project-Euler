my @letters = (97..122).map(*.chr).combinations: 3;
say @letters.contains(<g o d>);
my @cipher-text = slurp.split(",");
my @grouped-text = @cipher-text.rotor(3);
my @string;
for @letters -> @letter-combination {
    @string = ();
    for @grouped-text -> @group {
        @string.push(chr(@group[0] +^ ord(@letter-combination[0])));
        @string.push(chr(@group[1] +^ ord(@letter-combination[1])));
        @string.push(chr(@group[2] +^ ord(@letter-combination[2])));
    }  
        print "\n\nKEY FOR STRING is @letter-combination[]\n";
} 
say @string.join;
print "\n\n";
say [+] @string.join.comb>>.ord;
