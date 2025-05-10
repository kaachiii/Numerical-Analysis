function [x0,n] = NewtonUpdate(f, x0, tol, maxiter)
  # menambahkan kriteria gagal, membatasi counter n-nya
  # df nya jangan dijadikan input
  f0 = f(x0);
  n = 0;
  h = 1e-3;
  while abs(f0) > tol && n < maxiter
    df0 = (f(x0+h)-f(x0-h))/(2*h);
    x0 = x0-f0/df0;
    n = n+1;
    f0 = f(x0);
  endwhile
