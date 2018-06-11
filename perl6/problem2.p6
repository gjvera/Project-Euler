#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
say( 1, 1, *+ * ... ^ *> 4000000 ) . grep( *% % 2 ) . sum;
