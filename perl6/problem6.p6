#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
say  (1..100).sum ** 2 - (1..100).map(* ** 2).sum
