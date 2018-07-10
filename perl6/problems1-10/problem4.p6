#Find the largest palindrome made from the product of two 3-digit numbers.
#X operator performs cross product of two lists and X* multiplies every result of said cross product i.e. 100 * 101 100 * 102 100 * 103 ... 999 * 900 999 * 901 etc.
say max ([X*] (100..999, 100..999)).grep: {.flip eq $_}
