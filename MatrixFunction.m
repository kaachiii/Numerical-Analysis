 # LU factorization
 function U = MatrixFunction(A)
   [n,n] = size(A);
   L = eye(n);
   p = 1:n;

   for k = 1:n-1
     [x,b] = max(abs(A(k:n,k)));
     b = b+k-1;
     A([k b],:) = A([b k],:); # Switch element's position
     p([k b]) = p([b k]);
     L([k b],1:k-1) = L([b k],1:k-1);
     for i = k+1:n
       L(i,k) = A(i,k)/A(k,k);
       A(i,:) = A(i,:)-L(i,k)*A(k,:);
     endfor
   endfor
   U = A;
 endfunction
