function [ODP]=cramer(n, F, C)
  wyzC=det(C);
  for i=1:n
    wektor=F;
    F=C(:,i);
    C(:,i)=wektor;
    k=det(C);
    ODP(i,1)=k/wyzC;
    wektor=F;
    F=C(:,i);
    C(:,i)=wektor;
   endfor
endfunction 