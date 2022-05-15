clc;
clear;
r=[0  0.12  0.24  0.36  0.49  0.62 0.79  0.86  0.93  1];
rho=[ 6 5.81  5.14  4.29  3.39  2.7  2.19  2.1  2.04  2];
r=r/10;
a= rho*4*pi.*r.^2;
m=trapz(r,a);
V = 4/3*pi*max(r).^3;
Density=m./V;
fprintf('Mass is : %f m\n ,  Density is : %f Density\n',m,Density)