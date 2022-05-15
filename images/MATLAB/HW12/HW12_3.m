clc;
clear;
close all;
format long;
f=@(t,x) [-x(1)^4+x(2)*t;-x(1)+(x(2)+x(2)^4)+x(3)^4;(x(2)+x(2)^4)+x(3)^4+t];
tspan=[0,0.03];
y0=[3;2;1];
[T,X]=ode45(f,tspan,y0);
plot(T,X(:,1),T,X(:,2),T,X(:,3));
legend('x(t)','y(t)','z(t)')