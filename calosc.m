clc,clear all, format long e
n=12800
A = gallery("ris",n);
B = A*ones(n,1);
cond(A)

%cramer 
disp("cramer")
tic
n=size(A,1);
[ODP]=cramer(n, B, A);
norm(ODP-ones(n,1),2)
p=toc



%lu z czesciowy pivot
disp("LU z cz piv")
tic
[L, U, P] = pivot(A);
n=size(L,1);
y=macierz_dolno(n,P*B,L);
x=macierz_gorno(n,y,U);
norm(x-ones(n,1),2)
p=toc


%{
%lu z calkowity pivot
disp("LU z cal pivot")
tic
[L, U, P, Q] = completePivot(A);
b=P*B;
y=macierz_dolno(n,b,L);
y=macierz_gorno(n,y,U);
x=Q*y;
norm(x-ones(n,1),2)
p=toc
%}

%lu
disp("LU")
tic
[L,U]=simpLU(A);
y=macierz_dolno(n,B,L);
x=macierz_gorno(n,y,U);
norm(x-ones(n,1),2)
p=toc

