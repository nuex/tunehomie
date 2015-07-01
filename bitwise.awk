# snarfed from https://github.com/ssmccoy/awkbot/blob/master/src/bitwise.awk
function r(v, d) {
  return v/(2^d)
}
function and(a,b,r,i,c,ia,ib) {
  r = 0
  for (i=0;i<32;i++) {
    c = 2^i
    ia = int(a/c) % 2
    ib = int(b/c) % 2
    r += (ia && ib)*c
  }
  return r
}
function xor(a,b,r,i,ia,ib) {
  r = 0
  for (i=0;i<32;i++) {
    c = int(2^i)
    ia = int(a/c) % 2
    ib = int(b/c) % 2
    r += (ia || ib) && (ia != ib) * c
  }
  return r
}
