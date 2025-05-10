function [L, d] = LDLT(A) # A harus simetrik
  [n, n] = size(A);
  L = eye(n);

  # cost = n^3/6
  for j = 1:n-1
    # mulai dr baris j+1 sampai n
    L(j+1:n, j) = A(j, j+1:n)'/A(j,j); # assign ke kolom
    d(j) = A(j,j); # simpan elemen diagonal
    for i = j+1:n
      # update baris dari i
      A(i, i:n) = A(i, i:n) - L(i, j)*A(j, i:n);
    endfor
  endfor

  d(n) = A(n,n);

