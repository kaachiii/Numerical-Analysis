function z = Jacobian2(F,x)
  n = length(x);
  h = 1e-5;

  for i = 1:n
    for j = 1:n
      x0ph = x;
      x0ph(j) = x0ph(j)+h;
      x0mh=x;
      x0mh(j)=x0mh(j)-h;
      Fx0ph = F(x0ph);
      Fx0mh = F(x0mh);
      J(i,j)= (Fx0ph(i)-Fx0mh(i))/(2*h);
    endfor
  endfor

