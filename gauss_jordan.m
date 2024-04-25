function inv =gauss_jordan(A)
  n=size(A,1);
  if det(A)==0
    printf("No tiene inversa");
    inv=[];
    return
  endif
  AI=[A,eye(n)];
  disp(AI);
  for i=1:n
    AI(i,:)=AI(i,:)/AI(i,i);
    for j=1:n
      if j~=i
        AI(j,:)=AI(j,:)-AI(i,:)*AI(j,i);
      endif
    endfor
  endfor
  disp(AI);
  inv=AI(:,n+1:end);

endfunction

