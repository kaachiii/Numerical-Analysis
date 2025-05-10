# basis standar van der monde system
function c = Stdbasis(x,y)
  n =  length(x);
  A = zeros(n,n);
  A(:,1) = ones(n,1);
  for i = 2:n
    A(:,i) = x.^(i-1); # operasi x.^2 -> operasi kuadrat pada elemen demi elemen
  endfor
  c = A\y;
  # plot gambar -> t = 0:0.1:0.4 -> for i = 1:41 p(i)=c(1)+c(2)*t(i)+c(3)*t(i)^2 -> plot(t,p) atau plot(x,y,'+',t,p) -> p(31)

  # kalo mau cari tau nilai akar y = [1;4;9;16], x = [1;2;3;4]

