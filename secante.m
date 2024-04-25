function raiz = secante(f,x0,tol)
k=0;
h=0.0000001;
x1=f(x0,h);
while abs(x1-x0)>=tol
  k+=1;
  x0=x1;
  x1=g(x0,h);
endwhile
raiz=x1
endfunction


g=@(x,h) x-f(x)*h/(f(x+h)-f(x))
g=@(x,h) x-f(h)*2*h/(f(x+h)-f(x-h))
