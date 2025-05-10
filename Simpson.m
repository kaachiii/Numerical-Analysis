function S = Simpson(f,a,b)
  c= (a+b)/2;
  S = (b-a)*(f(a)+4*f(c)+f(b))/6;
