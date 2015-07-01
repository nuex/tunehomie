BEGIN {
  for(t=0;;t++)
    #putchar(t*5&(t>>7)|t*3&(t*4>>10))
    printf("%c", xor(and(t*5, r(t,7)), and(t*3, r(t*4, 10))))
}
