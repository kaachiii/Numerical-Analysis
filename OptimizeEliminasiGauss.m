function [U,bt] = OptimizeEliminasiGauss(A, b)
  n = length(b);
  A = [A b]; # augmented dulu matrixnya

  for j = 1:n-1 # j untuk indexing kolom
    for i = j+1:n # i untuk indexing baris
      m = A(i, j)/A(j, j); # a2 = a2 - (a2/a1)a1 = 0
      # bekerja pada baris ke-i
      A(i,j:n+1) = A(i,j:n+1)-m*A(j,j:n+1); # after optimisasi A(i,j:n+1) = A(i,j:n+1) - m*A(j,j:n+1)
                                # menghemat n^2/2 flops
                                # kita mulai update dr index j+1 karena diindex sebelum j + 1 udh pasti 0
                                # U = triu(A(:,1:n))
                                # ambil triu karena sisanya junk
    endfor
  endfor

  U = triu(A(:,1:n)) # ambil semua baris dan n kolom pertama
  bt = A(:,n+1)
