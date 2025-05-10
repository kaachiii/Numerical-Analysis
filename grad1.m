function g = grad1(x)
  g = zeros(2, 1);
  g(1) = 4*x(1)^3 - 2*x(2) - 2;
  g(2) = 8*x(2) - 2*(1) +2;
