function p =Lagrange(x,y,t) # terjadi n^2 multiplication
  # lagrange basis interpolasi
  #p(t) = sigma(yi*li(t))
  n = length(x);
  p = 0;
  for i = 1:n
    l(i) = 1;
    for j = 1:n
      if j ==i
        continue;
       else
        l(i) = l(i)*(t-x(j))/(x(i)-x(j));
      endif
    endfor
    p = p+y(i)*l(i);
  endfor

