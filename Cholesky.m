function G = Cholesky(A)
  [n, n] = size(A);
  G = zeros(n);
  for j=1:n-1
    # hitung diagonal G(j, j)
    G(j,j)=sqrt(A(j, j)-G(j, 1:j-1)*G(j, 1:j-1)');
    # G(j, 1:j-1)*G(j, 1:j-1)' = norm kuadrat
    for i = j+1:n
      G(i, j) = (A(i,j)-G(i, 1:j-1)*G(j, 1:j-1)')/G(j,j);
    endfor
  endfor
  G(n,n) = sqrt(A(n, n)-G(n, 1:n-1)*G(n, 1:n-1)');

