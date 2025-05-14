function R = repeatedmid1(f,x)
  n = length(x);
  R = 0;
  for i = 1:n-1
    m = (x(i)+x(i+1))/2;
    R = R+f(m)*(x(i+1)-x(i));
  endfor

