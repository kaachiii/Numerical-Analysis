function [L, U, p] = LUpivot(A)
  [n,n] = size(A);
  L = eye(n);
  p = 1:n;

  for k = 1:n-1 # loop kolom
    # fungsi max mengeluarkan bil max, dan index posisi
    [s,t] = max(abs(A(k:n,k))); # cari max dari 1 kolom
    t = t + k-1; # adjust index t, krn index pertama dr max selalu 1
    p([k,t]) = p([t,k]);# swap baris p
    A([k,t],k:n) = A([t,k],k:n); # mulai dr kolom ke k
    L([k,t],1:k-1) = L([t,k],1:k-1);

    L(k+1:n,k) = A(k+1:n,k)/A(k,k); # hitung mulai dr di bawah diagonal
                                    # A(k, k) tdk mungkin = 0 krn A tdk singular
                                    # c = x1/x2
    for i = k+1:n # loop baris
      A(i,k+1:n) = A(i,k+1:n)-L(i,k)*A(k,k+1:n);
    endfor
  endfor

  U = triu(A);
