n=8
A=randn(n)
R0=A
Q=eye(n);
for k=1:n-1
    e=zeros(n-k+1,1)
    e(1)=1
    v=norm(R0(k:n,k))*e-R0(k:n,k)
    Q0=eye(n-k+1)-2/(v'*v)*v*v'
    R0(k:n,(k+1):n)=Q0*R0(k:n,(k+1):n)
    futao=Q0*R0(k:n,(k+1):n)
    R0(k,k)=futao(1)
    qq=eye(n)
    qq(k:n,k:n)=Q0
    Q=Q*qq
    R0((k+1):n,k)=zeros(n-k,1)
end;
R=Q'*A;