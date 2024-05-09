function x = Rtri(A,b)
    n=size(A,1);
    x=zeros(n,1);
    x(n)=b(n)/A(n,n);
    for k=(n-1):-1:1
        s=0;
        for j=(k+1):n
            s=s+A(k,j)*x(j);
        end
        x(k)=(b(k)-s)/A(k,k);
    end
end

