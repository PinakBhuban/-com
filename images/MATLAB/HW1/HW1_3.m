clc;
clear;
close all;
a=15;
x=a/2;
n=4;
es=.5*10^(2-n);
ea=100;
while ea > es
    prev=x;
    x = ((x+a/x)/2);
    ea=abs((x-prev)/x)*100;
end
fprintf('The solution is =%.3f\n',x)
