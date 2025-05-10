function a = turunanKedua(f, x)
  h = 1e-5;
  a = (f(x+h)-2*f(x)+f(x-h))h*h;
