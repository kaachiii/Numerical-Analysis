function [x0,n] = steepest(f,x0,tol,max_iter)
  g0 = gradf(f,x0);
  n = 0;
  while n < max_iter && norm(g0) > tol
    p0 = -g0;
    alfa = LineSearchBS(f, x0, p0);

    x0 = x0+alfa*p0;
    g0 = gradf(f, x0);
    n = n+1;
  endwhile

