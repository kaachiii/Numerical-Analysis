function G = gauss2(f,a,b) # 2 point gauss integral
  # 2 kali call function, akurasinya sudah mendekati yg midpoint berkali2 call function
  x0 = a+((b-a)/2)*(-1/sqrt(3)+1);
  x1 = a+((b-a)/2)*(1/sqrt(3)+1);
  w1 = (0.5*(b^2-a^2)-(b-a)*x0)/(x1-x0);
  w0 = b-a-w1;

  G = w0*f(x0)+w1*f(x1);
