function [R,bt] = GivenRotation(A,b)
  # untuk matrix sparse akan lebih menguntungkan krn banyak nolnya, dan tidak bekerja pada semua vektor
  # rotasi givens akan nol-in satu-satu
  # jika matriksnya penuh, given rotation akan sedikit lebih mahal drpd householder

  [m n] = size(A);
  A = [A b];
  # loop kolom baris
  for j = 1:n
    for i = j+1:m
      r = sqrt(A(j,j)^2+A(i,j)^2);
      c = A(j,j)/r; # cosinus
      s = A(i,j)/r; # sinus
      # update baris ke-i dan baris ke-j
      tmp = c*A(j,:)+s*A(i,:);
      A(i,:) = -s *A(j,:)+c*A(i,:);
      A(j,:) = tmp;
    endfor
  endfor

  R = A(:, 1:n);
  bt = A(:, n+1);
