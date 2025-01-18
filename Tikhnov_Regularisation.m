G=G(1:8,:);
[U,S,V]=svd(G);
m=length(U);
n=length(V);
p=rank(G);
k=min(m,n);
d=[3 0 3 3 0 3 0 sqrt(2)];
s=diag(S);
alpha_L=ceil(s(1));
alpha_0=2.36*10^(-16);
L=1000;
for j=1:L
    alpha(j)=alpha_0*(alpha_L/alpha_0)^((j-1)/L);
for i=1:k
    f(i)=s(i)^2/(s(i)^2+alpha(j)^2);
    m1(:,i)=f(i)*U(:,i)'*d'/s(i)*V(:,i); 
end
    m_sol(:,j)=sum(m1,2);
    y(j)=sqrt(sum(m_sol(:,j).^2));
    r=G*m_sol(:,j)-d';
    x(j)=sqrt(sum(r.^2));
end
loglog(x,y)
