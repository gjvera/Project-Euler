say (41063625..*).hyper.first({(($_.comb.permutations>>.join).grep({($_ ** (1/3)) %% 1})).elems == 5})
