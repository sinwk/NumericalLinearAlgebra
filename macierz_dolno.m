function [ODP]=macierz_dolno(n,F,C)
  ODP(1,1)=F(1,1)/C(1,1) ;
  for(i=2:n)
    x=0;
    for(j=1:i-1)
      x=x+C(i,j)*ODP(j,1);
    endfor
    ODP(i,1)=(F(i,1)-x)/C(i,i);
  endfor
  
endfunction