function [R,n] = modified_romberg(f, a, b, tol) # divide & conquer akan lebih murah dibanding romberg
  n = 1;
  h = (b-a)/2;
  r1 = zeros(n, 1);
  r1(1) = h*(f(a)+f(b));
  r2 = zeros(n+1,1);
  r2(1) = 0.5*r1(1)+h*(f(a+h));
  r2(2) = r2(1)+ (r2(1)-r1(1))/3;
  while abs(r2(n+1)-r1(n)) > tol
    r1 = r2;
    n = n+1;
    h = h/2;
    r2 = zeros(n+1, 1);
    r2(1) = 0.5*r1(1);
    for i = 1:2^(n-1)
      r2(1) = r2(1)+h*f(a+(2*k-1)*h);
    endfor
    for m=2:n+1
      r2(m) = r2(m-1)+(r2(m-1)-r1(m-1))/(4^(m-1)-1);
    endfor
  endwhile

  R = r2(n+1);

