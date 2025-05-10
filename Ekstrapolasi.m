function [x1,n]=Ekstrapolasi(f,x0,maxit,tol)
  h = 1e-4;
  f0 = f(x0);
  df0 = (f(x0+h)-f(x0-h))/(2*h);
  x1 = x0-f0/df0;
  f1 = f(x1);
  n = 1;
  while abs(f1) > tol && n < maxit
    df1 = (f(x1+h)-f(x1-h))/(2*h);
    a = ((f0-f1)/(x0-x1)-df1)/(x0-x1);
    b = df1 - 2*a*x1;
    c = f1-df1*x1 + a*x1^2;
    D = sqrt(b^2-4*a*c);
    x11 = (-b+D)/(2*a);
    x12 = (-b-D)/(2*a);
    f11 = f(x11);
    f12 = f(x12);
    if (abs(f11) < abs(f12))
      x1 = x11;
      f1 = f11;
    else
      x1 = x12;
      f1 = f12;
    endif
    n = n+1;
  endwhile

