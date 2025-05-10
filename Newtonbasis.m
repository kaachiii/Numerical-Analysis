function c = Newtonbasis(x,y) # utk komputasinya 1/2 dr lagrange
  n = length(x);
  # tugas 1: membentuk matriksnya dulu (segitiga bawah)
  A = zeros(n,n);
  A(:,1) = ones(n,1);
  for j =2:n # index kolom
    for i = j:n
      A(i,j) = A(i,j-1)*(x(i)-x(j-1));
    endfor
    A
  endfor
  c = segitigaBawah(A,y);

