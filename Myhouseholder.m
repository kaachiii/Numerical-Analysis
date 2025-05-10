function [R, bt] = Myhouseholder(A, b)
  [m,n] = size(A);
  A = [A b];
  for j = 1:n
    x = A(j:m, j);
    v = x + sign(x(1))*norm(x)*[1; zeros(m-j,1)];
    scalar = 2/(v'*v);
    for i = j:n+1 # n+1 krn b juga dikerjain
      A(j:m, i) = A(j:m, i) - scalar * v * (v' * A(j:m, i)); # kompleksitas = n^2
    endfor
  endfor

  R = A(1:m,1:n); bt=A(1:m,n+1);
  # akan mengembalikan R1 segitiga atas
