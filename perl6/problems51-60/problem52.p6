say (1..*).first({$_.comb.sort.join == (2 * $_).comb.sort.join == (3 * $_).comb.sort.join == (4 * $_).comb.sort.join 
== (5 * $_).comb.sort.join == (6 * $_).comb.sort.join}) 
