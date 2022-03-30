clc

clear all

close all

k1=25;k2=25;k3=25;k4=10;k6=10;k7=2;k8=2;k5=5;

p1=2;p2=2;p3=2;

syms u1 u2 u3

eq1=p1-k1*u1+k5*(u3-u1)+k4*(u2-u1)==0;

eq2=p2-k2*u2-k4*(u2-u1)+k6*(u3-u2)==0;

eq3=p3-k7*u3-k8*u3-k3*u3-k6*(u3-u2)-k5*(u3-u1)==0;

[A,B] = equationsToMatrix([eq1, eq2, eq3], [u1, u2, u3]);

u=linsolve(A,B);

fprintf('The displacement of cart u_1 is %.4f .\n The displacement of cart u_2 is u_2 is %.4f .\n The displacement of cart u_1 is u_3 is %.4f .\n',u(1),u(2),u(3))