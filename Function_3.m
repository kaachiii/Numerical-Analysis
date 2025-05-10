function z = Function_3(x)
  z(1) = zeros(2,1);
  z(1) = 2*x(1)*exp(-x(2))-sin(x(1)*x(2)+1);
  z(2) = x(1)^2 - 2*x(1)*x(2)+x(1)-x(2);
