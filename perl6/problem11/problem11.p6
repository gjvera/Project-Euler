#Work in Progress

my @lines = 'problem11.txt'.IO.lines>>.words;
my @vert-lines = [Z] 'problem11.txt'.IO.lines>>.words;
sub get-horizontal-products(@lines) {
    my @max-horiz-product;
    for @lines {
        @max-horiz-product.push: max .rotor(4 => -3).map({[*] $_});

    }
    say max @max-horiz-product;
}

sub get-vertical-products(@vert-lines) {
    my @max-prod;
    for @vert-lines {
        @max-prod.push: max .rotor(4=>-3).map({[*] $_});
    }
    # say ([Z] @vert-lines)>>.rotor(4)>>.map(*.reduce(* * * )).flat.max
     say max @max-prod;
}
get-horizontal-products(@lines);
get-horizontal-products(@vert-lines);
