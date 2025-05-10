function [x, n] = Bisection(f, a, b, tol)
  # 2 log (b-a) = kompleksitas (banyak iterasi)
  # n = banyak iterasi
  fa = f(a);
  fb = f(b);

  n = 0;
  fm = 1;
  while abs(fm) > tol
    m = (a+b)/2;
    fm = f(m)
    if fa * fm < 0
      b = m # b-nya hilang dibuang
    else
      a = m
    endif
    n = n+1;
  endwhile

  # x nya sama dengan m
  x = m;
