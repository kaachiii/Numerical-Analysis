function R = repeatedmid2(f, a, b, n)
  R = 0;
  h = (b-a)/(n-1); # krn index mathlab mulai dr 1, kalo mulai dr 0 / (n)
  for i = 1:n-1
    R = R + f(a+(2*i-1)*h/2);
  endfor
 R = R *h;
