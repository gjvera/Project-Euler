say [+] (3..100_000).grep({([+] $_.comb.map({[*] (1..$_)})) == $_})
