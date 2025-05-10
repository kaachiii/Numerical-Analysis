function g = gradf(f, x)
  n = length(x);
  g = zeros(n, 1);
  h = 1e-5;

  for i = 1:n
    xph = x;
    xph(i) = xph(i)+h;

    xmh = x;
    xmh(i) = xmh(i)-h;

    fxph = f(xph);
    fxmh = f(xmh);

    g(i) = (fxph - fxmh) / (2*h);
  endfor
