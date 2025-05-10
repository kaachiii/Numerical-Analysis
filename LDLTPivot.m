function [L,d,p] = LDLTPivot(A)
  # MASIH ADA YG SALAH!!!

  [n, n] = size(A);
  L = eye(n);
  p = 1:n;

  # cost = n^3/6
  for j = 1:n-1
    # mulai dr baris j+1 sampai n

    [s v] = max(abs(diag(A(j:n, j:n)))); # s= nilai, v = posisi
    v = v+j-1; # adjust v

    # swap baris dan kolom A
    A([j v], :) = A([v j], :);
    A(:, [j v]) = A(:, [v j]);

    p([j v]) = p([v j]);

    # swap barisnya aja dari L
    L([j v], 1:j-1) = L([v j], 1: j-1); # jangan lakukan pertukaran kolom krn kolomnya blom jadi

    L(j+1:n, j) = A(j, j+1:n)'/A(j,j);
    d(j) = A(j,j); # simpan elemen diagonal
    for i = j+1:n
      # update baris dari i
      A(i, i:n) = A(i, i:n) - L(i, j)*A(j, i:n);
    endfor
  endfor

  d(n) = A(n,n);

