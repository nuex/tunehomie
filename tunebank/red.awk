BEGIN {
  for(t=0;;t++)
    # putchar((t|(t>>9|t>>7))*t&(t>>11|t>>9))
    printf("%c", xor(t, xor(r(t,9), r(t,7)))*and(t, xor(r(t,11), r(t,9))));
}
