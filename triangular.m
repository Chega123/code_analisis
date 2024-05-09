function [a,b] = triangular(A,b)
  n = size(A,1);
  for k = 1:n-1
    for i = k+1:n
      m = A(i,k)/A(k,k);
      A(i,k) = 0;
      for j = k+1:n
        A(i,j) = A(i,j) - m*A(k,j);
        b(i) = b(i) - m*b(k);
      endfor

    endfor
  endfor
  a=A;
endfunction

