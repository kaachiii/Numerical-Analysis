function f = fobj(x)
  f = sqrt((x(1)-3)^2 + (x(2)-4)^2) - x(3)*(x(1)^2+x(2)^2-4);
