function a=LineSearchBS(f,x0,p)
  a1=0; a2=1; tol=0.1e-3;h=0.1e-4;
  while (a2-a1)>tol
    m=(a1+a2)/2;
    x1p=x0+(a1+h)*p;
    x1m=x0+(a1-h)*p;
    df1=(f(x1p)-f(x1m))/(2*h);
    xmp=x0+(m+h)*p;
    xmm=x0+(m-h)*p;
    dfm=(f(xmp)-f(xmm))/(2*h);
  if df1*dfm<0
    a2=m;
  else
  a1=m;
  end
  end
  a=(a1+a2)/2;

