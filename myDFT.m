function X=myDFT(x,N)
L= length(x);

if(N<L)
    error('N must be greater than or equal to lenght of x')
end
x= [x zeros(1,N-L)];

for k=0:N-1
    for n=0:N-1
       Wn = exp(-j*2*pi*k*n/N);
       X1(k+1,n+1)=Wn;
    end
end
X = X1*x';