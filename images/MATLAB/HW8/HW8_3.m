clc;
clear all;
close all;
t = [0 2 4 5 6 10 12 14 16 18 20 22 24];
y = [71.1 69.1 66 69.1 73 79 86 93 96.1 93.9 91 82.9 82];
figure,
plot(t,y,'ro')
title('Part a: Three constate curve fitting')
F = @(c,tdata) c(1) + c(2)*cos(pi*tdata/12) + c(3)*cos(pi*tdata/12) ;
c0 = [70 0 0 ];
[c,resnorm,~,ecitflag,output] = lsqcurvefit(F,c0,t,y)
hold on
plot(t,F(c,t));

f = F(c,t);
rmse = sqrt(mean((y(:) - f(:)).^2));
str = {'Root Mean Square','for part a is',rmse};
text(2,95,str);
hold off


t = [0 2 4 5 6 10 12 14 16 18 20 22 24];
y = [71.1 69.1 66 69.1 73 79 86 93 96.1 93.9 91 82.9 82];

figure,
plot(t,y,'ro')
title('Part b :Four constate curve fitting')
F = @(c,tdata) c(1) + c(2)*cos(pi*tdata/12) + c(3)*cos(pi*tdata/12) +c(3)*cos(pi*tdata/6) ;
c0 = [70 0 0 0];
[c,resnorm,~,ecitflag,output] = lsqcurvefit(F,c0,t,y)
hold on
plot(t,F(c,t));
f = F(c,t);
rmse = sqrt(mean((y(:) - f(:)).^2));
str = {'Root Mean Square','for part a is',rmse};
text(2,95,str);
