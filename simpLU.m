function [L,U]=simpLU(A)
  [m,n]=size(A);
  for i=1:1:n-1
    r=i+1:1:n;
    A(r,i)=A(r,i)/A(i,i);
    A(r,r)=A(r,r)-A(r,i)*A(i,r);
   
  endfor
L=eye(n,n)+tril(A,-1);
U=tril(A);




