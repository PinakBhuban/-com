clc;clear;
r = 2; 
Vc = (4/3)*pi*r^3;
f= @(h)(pi*h^2*r - pi*h^3/3)-Vc/5; 
h(1)=4; 
h(2)=7; 
n =2;
ea = 100;
es = 0.05;
while ea > es
h(n+1)=h(n)-f(h(n))*(h(n)-h(n-1))/(f(h(n))-f(h(n-1))); 
ea = abs(h (n+1) - h (n)); 
n = n+1;
end
fprintf('Floating deapth of the cork ball is : %.3f cm \n ',h(n));