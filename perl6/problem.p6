#Find the sum of all the multiples of 3 or 5 below 1000
say [+] (1..^1000).grep({!($_ % (3 & 5))});
