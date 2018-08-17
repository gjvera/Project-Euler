sub is-square(@key-values, @anagrams){
    my @number = ();
    for @key-values -> $pair { @number.push($pair.value); }
    if !(sqrt(@number.join.Num) %% 1) { return False; }
    my $max = @number.join.Num;
    @number = ();
    for @anagrams[1] -> $char {
        @number.push(@key-values.grep({$_.key ~~ $char})[0].value)
    }
    if !(sqrt(@number.join.Num) %% 1) { return False; }
    if $max < @number.join.Num { return @number.join.Num; }
    return $max;
}
sub get-anagram-value(@anagrams) {
    my $max = 0;
    for @anagrams -> @anagram {
        my $tail-num-length = (@anagram[0].comb.elems) - 1;
        say "Current tail length = $tail-num-length[]";
        my @numbers = (1..9);
        my @key-values = ();
        for @numbers -> $number {
            my @suffix-num = (0..9).grep(* !== $number);
            my @tail-num = @suffix-num.combinations($tail-num-length).flatmap(*.permutations).rotor($tail-num-length);
            for @tail-num -> @tail {
                my $letter-count = 0;
                @key-values.push(@anagram[0].comb[$letter-count] => $number);
                $letter-count += 1;
                for @tail -> $digit {
                    @key-values.push(@anagram[0].comb[$letter-count] => $digit);
                    $letter-count += 1;
                }
                my $num = is-square(@key-values, @anagram);
                if $num !== False {
                    if $num > $max {
                        $max = $num;
                    }
                }  
                @key-values = ();
            }
        }
    }
    say $max;
}

my @words = slurp.subst('"', '',:g).split(",").words.combinations(2);
say @words;
my @anagrams = ();
for @words -> @word-combo {
    next if @word-combo[0].comb.elems == 1 or @word-combo[1].comb.elems == 1;
    next if @word-combo[0].flip ~~ @word-combo[1];
    if @word-combo[0].comb.Bag ~~ @word-combo[1].comb.Bag and @word-combo[0] !~~ @word-combo[1] {
        say "ANAGRAM!!";
        @anagrams.push: @word-combo;
    }
}
get-anagram-value(@anagrams);
