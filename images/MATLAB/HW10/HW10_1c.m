clc
clear all
close all
a=0; 
b=3; 
E=0.165;
F=0.25025;
f=@ (x) (1/(3*x+1)^3); 
n=6;
h=abs((b-a)/n); 
s=0; 
for i=0:n
x=a+i*h;
if i==0||i==n
p=1;
elseif mod(i,2)~=0
p=4;
else
p=2;
end
s=s+p*f(x);
end
I=(h/2)*s;
fprintf('The integral value is :%f\n', I);
re=abs(((E-I)/E)*100);
re1=abs(((E-F)/E)*100); 
fprintf('relative error by composite trapezoidal rule is:%f\n',re);
fprintf('relative error by trapezoidal rule is:%f\n',re1);

a=0;
b=3; 
E=0.165;
F=0.25025;
f=@ (x) (1/(3*x+1)^3); 
n=24;
h=abs((b-a)/n); 
s=0; 
for i=0:n
x=a+i*h;
if i==0||i==n
p=1;
elseif mod(i,2)~=0
p=4;
else
p=2;
end
s=s+p*f(x);
end
I=(h/2)*s;
fprintf('The integral value is :%f\n', I);
re=abs(((E-I)/E)*100);e
re1=abs(((E-F)/E)*100); 
fprintf('relative error by composite trapezoidal rule is:%f\n',re);
fprintf('relative error by trapezoidal rule is:%f\n',re1);

a=0; 
b=3; 
E=0.165;
F=0.25025;
f=@ (x) (1/(3*x+1)^3); 
n=12;
h=abs((b-a)/n); 
s=0; 
for i=0:n
x=a+i*h;
if i==0||i==n
p=1;
elseif mod(i,2)~=0
p=4;
else
p=2;
end
s=s+p*f(x);
end
I=(h/2)*s;
fprintf('The integral value is :%f\n', I);
re=abs(((E-I)/E)*100); 
re1=abs(((E-F)/E)*100); 
fprintf('relative error by composite trapezoidal rule is:%f\n',re);
fprintf('relative error by trapezoidal rule is:%f\n',re1);