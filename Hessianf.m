# xph , mh nya di luar

function H = Hessianf(f, x)
  n = length(x);
  h = 1e-5;
  H = zeros(n);

  for j = 1:n
    xph = x;
    xph(j) = xph(j)+h;
    xmh = x;
    xmh(j)=xmh(j)-h;

    # yg mau dibikin di bawah diagonal
    for i= j:n
      xpph = xph;
      xpph(i) = xpph(i)+h;

      xpmh = xph;
      xpmh(i)=xpmh(i)-h;

      xmph = xmh;
      xmph(i)=xmph(i)+h;

      xmmh=xmh;
      xmmh(i)=xmmh(i)-h;

      H(i,j) = (f(xpph)-f(xpmh)-f(xmph)+f(xmmh))/(4*h*h);
      H(j,i) = H(i,j);
    endfor
  endfor

