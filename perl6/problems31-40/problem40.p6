my @array = (0, 1 ... 200000)>>.comb.flat;
say @array[1000000] * @array[1] * @array[10] * @array[100] * @array[1000] * @array[10000] * @array[100000]
