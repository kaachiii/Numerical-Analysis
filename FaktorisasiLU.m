function [L, U]=FaktorisasiLU(A)
  [n,n] = size(A);
  L = eye(n); # inisialisasi dg identitas krn hanya isi yg bawahnya

  for j = 1:n-1 # j untuk indexing kolom
    for i = j+1:n # i untuk indexing baris
      L(i,j) = A(i, j)/A(j, j); # a2 = a2 - (a2/a1)a1 = 0
      # bekerja pada baris ke-i
      A(i,j:n) = A(i,j:n)-L(i,j)*A(j,j:n); # after optimisasi A(i,j:n+1) = A(i,j:n+1) - m*A(j,j:n+1)
                                # menghemat n^2/2 flops
                                # kita mulai update dr index j+1 karena diindex sebelum j + 1 udh pasti 0
                                # U = triu(A(:,1:n))
                                # ambil triu karena sisanya junk
    endfor
  endfor

  U = triu(A);
