say ([+] (1..1000).map({ $_ ** $_ })).sum.comb.tail(10).join;
