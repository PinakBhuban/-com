clc;
clear;
close all;
f=@(x) x^3-5*x+10;
g=@(x) 4*sin(3*x)+6;
fplot(f,[0 3],'b');
hold on
fplot(g,[0 3],'r');
t=@(x) x^3-5*x+10-4*sin(3*x)-6;
z(1)=fzero(t,[0 1]);
k(1)=f(z(1));
z(2)=fzero(t,[1 3]);
k(2)=f(z(2));
plot(z,k,'*k');
legend('f(x)','g(x)','Intersection')