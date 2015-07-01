BEGIN {
  for(t=0;;t++)
    # putchar(t*(t>>11&t>>8&123&t>>3))
    printf("%c", t*(and(and(and(r(t,11), r(t,8)), 123), r(t,3))));
}
