function f = f_rosenbrock(x)
  % f = (1 - x(1))^2 + 100 * (x(2) - x(1)^2)^2;
  f = x(1)^4 - 2*x(1) * x(2) + 4*x(2)^2 - 2*x(1)+2*x(2) - 1;
