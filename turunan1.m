function df = turunan1(f,x,h,flag)
  if flag == 1
    df = (f(x+h)-f(x))/h;
  elseif flag == 2
    df = (f(x)-f(x-h))/h;
  else
    df = (f(x+h)-f(x-h))/(2*h);
  endif

