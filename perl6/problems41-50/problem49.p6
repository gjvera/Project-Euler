(((1000..9999).hyper.grep(*.is-prime)).combinations(3).grep(-> ($a, $b, $c) { $a.comb.Bag ~~ $b.comb.Bag })).grep({$_[0].comb.sort ~~ $_[2].comb.sort}).say
