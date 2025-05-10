function [x0,n] = NewtonOptimisasi(f,x0,tol,max_iter)
  g0 = gradf(f, x0);
  n = 0;

  while norm(g0) > tol && n < max_iter
    H0 = Hessianf(f,x0);
    d = H0\-g0;
    x0=x0+d;
    g0 = gradf(f,x0);
    n=n+1;
  endwhile

