function J = myJacobian(F,x) # ini jacobian per kolom
  # jika hitung per baris, variabelnya bergerak untuk x yg sama
  # jika per kolom, variabelnya sama tapi F nya berubah
  n = length(x);
  h = 1e-5;
  for j=1:n
    # j adalah index kolom
    x0ph=x;
    x0ph(j) = x0ph(j)+h;
    x0mh=x;
    x0mh(j)=x0mh(j)-h;
    Fx0ph = F(x0ph);
    Fx0mh = F(x0mh);
    for i = 1:n
      J(i,j) = (Fx0ph(i)-Fx0mh(i))/(2*h);
    endfor
  endfor

  # n function call, kalo Jacobian2 n^2 function call

