function F = FGaussSystem(x) # gauss 2
  n = length(x);
  F = zeros(n,1); # int agar F ke bawah
  F(1) = x(1)+x(2)-2;
  F(2)= x(1)*x(3)+x(2)*x(4);
  F(3)= x(1)*x(3)*x(3)+x(2)*x(4)*x(4)-2/3;
  F(4)=x(1)*x(3)^3+x(2)*x(4)^3;
