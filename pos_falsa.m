function raiz=pos_falsa(f,a,b,tol)
  k=0;
  printf("|------k------|-----m-----|\n");
  m=(a*f(b)-b*f(a))/f(b)-f(a);
  while abs(b-a)>tol
    printf("|     %4.8f     |     %4.8f     |\n");
    if f(a)*f(b)<0
      b=m;
    else
      a=m;
    endif
    k+=1;
    m=(a*f(b)-b*f(a))/f(b)-f(a);
  endwhile
 raiz=m;
 endfunction
