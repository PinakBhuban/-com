clc;
clear;
close all;
disp('Velocity of a falling parachutist is given by v=(g*m/c)(1-exp(-(c/m)*t))')
g=9.8; c=15; t=10; v=36;
m0=20; 
m1=40; 
n=4;
es=0.5*10^(2-n);
ea=100;
f =@(m) ((g*m/c)*(1-exp(-(c/m)*t)))-v; 
m2_old=0;
while ea>es
m2= m1-(f(m1)* (m1-m0)/(f(m1)-f(m0))) ;
if abs(f(m2)-f(m2_old))<es
break;
end
m2_old=m2;
if f(m0)*f(m2) <0
m1=m2;
else
m0=m2;
continue
end
end
fprintf('the value of mass,m is %.4f',m2)

