BEGIN {
  for(t=0;;t++) {
    # putchar("%c", t*((t>>12|t>>8)&63&t>>4))
    printf("%c", t*(and(and(xor(r(t,12), r(t,8)), 63), r(t,4))))
  }}
