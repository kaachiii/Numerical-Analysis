# Newton untuk vektor/Jacobian
# Newton versi System
function [x0,n] = newtonSystem(F, x0, tol, max_iter)
  F0=F(x0);
  n = 0;

  while norm(F0) > tol && n < max_iter
    J = myJacobian(F,x0);
    [U,bt] = EliminasiGaussPivot(J, F0);
    d = segitigaAtas(U,bt);
    x0 = x0 - d;
    n = n+1;
    F0 = F(x0);
  endwhile

  # analisa kompleksitas -> cukup mahal
