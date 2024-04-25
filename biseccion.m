function raiz=biseccion(f,a,b,tol)
  k=0;
  printf("|------k------|-----m-----|\n");
  m=(a+b)/2;
  while abs(b-a)>tol
    if f(a)*f(b)<0
      b=m;
    else
      a=m;
    endif
    k+=1;
    printf("|     %4.8f     |     %4.8f     |\n");
    m=(a+b)/2;
  endwhile
  raiz=m;
 endfunction
