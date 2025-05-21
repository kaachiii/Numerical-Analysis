function F = FGauss4(x)
  n = length(x);
  F = zeros(n,1); # int agar F ke bawah
  F(1) = x(1)+x(2)+x(3)+x(4)-2;
  F(2)= x(1)*x(5)+x(2)*x(6)+x(3)*x(7)+x(4)*x(8);
  F(3)= x(1)*x(5)^2+x(2)*x(6)^2+x(3)*x(7)^2+x(4)*x(8)^2-2/3;
  F(4)= x(1)*x(5)^3+x(2)*x(6)^3+x(3)*x(7)^3+x(4)*x(8)^3;
