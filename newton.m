function raiz = newton(g,x0,tol)
k=0;
x1=g(x0);
while abs(x1-x0)>=tol
  k+=1;
  x0=x1;
  x1=g(x0);
endwhile
raiz=x1
endfunction
