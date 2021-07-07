clear all;clc;close all;
%Nilai parameter
xl=0;
xu=6;
ErrorToleransi=0.0001;
ErrorRelatif=1;
xm0=1;
it=0;



while ErrorRelatif>ErrorToleransi
  it=it+1;
  xm=(xl+xu)/2;
  Fbawah=fungsi(xl);
  Ftengah=fungsi(xm);
  
    if Fbawah*Ftengah==0
      disp('xm adalah akar lansung');
    elseif Fbawah*Ftengah<0
      xu=xm;
    else
      xl=xm;
    end
   ErrorRelatif=abs((xm0-xm)/xm0);
   xm0=xm;
   
  
end
fprintf('MetodeBagiDua\n');
fprintf('iterasi =%3d\n',it);
fprintf('xm=%8.5f\n',xm);
fprintf('error relative=%8.5f\n',ErrorRelatif);
fprintf('Xl=%8.5f\n',xl);
fprintf('Xu=%8.5f',xu);
