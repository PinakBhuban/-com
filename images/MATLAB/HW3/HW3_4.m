clc;
close all;
clear;
x=10;
f = @(x) (-5/6)*x^4+(57/6)*x^3-238.25*x;
d = @(x) (-5/6)*4*x^3+(57/6)*3*x^2-238.25;
for i=1:5

x(i+1)=x(i)-((f(x(i))/d(x(i))));

e(i)=abs((x(i+1)-x(i))/x(i));

if e(i)<0

break

end

end

fprintf('The displacement of 0<x<5: %.4f\n', x(i))

