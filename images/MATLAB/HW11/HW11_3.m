clc
clear all
close all
format long
t=[10:10:60];
c=[3.52,2.48,1.75,1.23,0.87,0.61];
dcdt=gradient(c,t)
b=log(-dcdt(:));
A=[ones(numel(t),1) log(c(:))];
C=A\b;
k=exp(C(1))
n=C(2)
f=@(c) -k*c.^n;
tt=0:0.01:60;
yy=f(tt);
plot(tt,yy);