function raiz = punto_fijo(x0,tol,f)
  run = true;
  x1 = f(x0);
  while run
    if abs((x1-x0)/x1) <= tol
      break;
    endif
    x0 = x1;
    x1 = f(x0);
  endwhile
  raiz = x1;
endfunction

