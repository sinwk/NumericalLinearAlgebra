function [ODP]=macierz_gorno(n,F,C)
  ODP(1,1)=F(n,1)/C(n,n) ;
  for(i=n:-1:1)
    x=0;
    for(j=i+1:n)
      x=x+C(i,j)*ODP(j,1);
    endfor
    ODP(i,1)=(F(i,1)-x)/C(i,i);
  endfor
  
endfunction