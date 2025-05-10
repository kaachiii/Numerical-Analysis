function [R,bt,p,r] = Myhousewithpivot(A,b)
  #r = rank
  #p = pivot
  [m,n] = size(A);
  A=[A b];
  r = 0;
  p = 1:n;
  for j=1:n
    x = zeros(n-j+1,1);
    for i=1:n-j+1
      x(i)=norm(A(j:m,i+j-1));
    endfor
    [y idx] = max(x);
    idx = idx+j-1;
    if y < 10^-10
      break
    endif
    A(:,[j idx]) = A(:,[idx j]);
    p([j idx])=p([idx j]);

    z = A(j:m,j); #ambil kolom yg mau diproses
    v=z+sign(z(1))*norm(z)*[1;zeros(m-j,1)];
    alfa = 2/(v'*v);
    for k=j:n+1
      alfa1=alfa*v'*A(j:m,k);
      A(j:m,k) = A(j:m,k)-alfa1*v;
    endfor
    r = r+1;
  endfor

  R=A(:,1:n);
  bt=A(:,n+1);
