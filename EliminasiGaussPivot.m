function [U,bt] = EliminasiGaussPivot(A,b)
  n = length(b);
  A = [A b];

  # pertukaran baris dilakukan sebelum  eliminasi baris
  # misal kita cari dr bawah baris 2, index 1 pada max sama dg baris 2 shg harus diadjust

  for j = 1:n-1
    [t,s] = max(abs(A(j:n, j))); # cari pivot
    s = s + j - 1; # Adjust index
    A([s j], :) = A([j s], :);
    for i = j+1:n
      m = A(i,j)/A(j,j);
      A(i,j:n+1) = A(i,j:n+1) - m*A(j,j:n+1);
    endfor
  endfor

  U = triu(A(:,1:n));
  bt = A(:,n+1);

