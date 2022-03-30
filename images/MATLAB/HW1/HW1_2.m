clc
a=15;
x=a/2;
e_s=.5*10^(2-n);
n=4;
e_a=100;
while 
    e_a > e_s
    prev=x;
    x = ((x+a/x)/2);
    e_a=abs((x-prev)/x)*100;
end
fprintf('The solution is =%.2f\n',x)
