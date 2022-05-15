function [v,a]= radar_config(t,r,A)

[~,n]= size(t);
v= zeros(n , 2);
a= zeros(n , 2);
h = t(2)-t(1);
for i= 2: n-1
    dot_r = (r(i+l)-r(i-l))/h;
    dot_r2 = (r(i+l)-2*r(i)+r(i-l))/h^2;

     dot_A = (A(i+l)-r(i-l))/h;
     dot_A2 = (A(i+l)-2*A(i)+A(i-l))/h^2;

     v(i,1) = dot_r;
     v(i,2)= r(i)*dot_A2;

     a(i,1)= dot_r2-r(i)*dot_A^2;
     a(i,2)=r(i)*dot_A2 + 2*dot_r*dot_A;
end 


