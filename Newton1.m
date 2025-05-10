# Newton methods
# |f(x)| < tol maka berhenti

function [x0,n] = Newton1(f,df, x0, tol)
  f0 = f(x0);
  n = 0;
  while abs(f0) > tol
    df0 = df(x0)
    x0 = x0-f0/df0 # kacau ketika df0 = 0 shg dapat terjadi infinite loop
    n = n+1;
    f0 = f(x0)
  endwhile

