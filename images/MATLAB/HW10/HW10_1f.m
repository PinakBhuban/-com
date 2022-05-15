lc
clear all
close all
format long
f=@(x) 1/(3*x+1)^3;
disp('For n=6')
SimpsonComp(f,0,3,6)
disp('For n=12')
SimpsonComp(f,0,3,12)
disp('For n=24')
SimpsonComp(f,0,3,24)
function int=SimpsonComp(f,a,b,n)
%takes in parameter as function handel f, starting interval a and ending
%interval b for integration and number of intervals as n
h=(b-a)/n;%step of integration
fa=f(a);%value of function at a
fb=f(b);%value of function at b
ff=0;%initialize ff to 0
for i=2:2:n%traversing on even numbers i
x=(a+(i-1)*h);%accessing even points in the intervals divided
fx=feval(f,x);%value of function at x
ff=ff+4*fx;%add 4*fx to ff
end
for i=3:2:n%traversing on odd numbers i
x=(a+(i-1)*h);%accessing odd points in the intervals divided
fx=feval(f,x);%value of function at x
ff=ff+2*fx;%add 4*fx to ff
end
int=(h/3)*(fa+fb+ff);%finally add first and last points tto all the sum and divide by 3
end);