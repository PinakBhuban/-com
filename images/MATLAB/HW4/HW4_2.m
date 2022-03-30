clc;
clear all;
d=5;
L=sqrt(100+d*d);
F=[2/sqrt(33) -7/sqrt(158) 0;-2/sqrt(33) -3/sqrt(158) d/L;5/sqrt(33) 10/sqrt(158) 10/L];
b=[0;0;1000];
T=F\b;
fprintf('Tension 1 is %4.2f.\n Tension 2 is %4.2f.\n Tension 3 is %4.2f.\n ',T(1),T(2),T(3))

