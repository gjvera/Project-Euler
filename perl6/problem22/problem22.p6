my $iterator = 0;
say [+] slurp.subst('"', '', :g).split(",").sort.map(++$iterator * *.comb.map(*.ord-64).sum)
