function [U, bt] = gauss(A, b)
  n = length(b); # A matriks persegi
  for j = 1:n-1 # ada n-1 kolom yg harus dinolkan sampai mjd segitigaatas
    for i = j+1:n # loop untuk tiap kolomnya, dinolkan mulai dr j+1
      r = A(i,j)/A(j,j);
      A(i,:) = A(i,:)-r*A(j,:);
      b(i) = b(i)-r*b(j);
    endfor
  endfor

  U = A; bt = b;

