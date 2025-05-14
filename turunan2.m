function d2f = turunan2(f, x, h, flag)
  if flag == 1
    d2f = (f(x+h)-2*f(x)+f(x-h))/(h*h);
  else
    d2f = (f(x+2*h)-2*f(x+h)+f(x))/(h*h);
  endif

