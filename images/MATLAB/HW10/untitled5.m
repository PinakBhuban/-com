clc; clear;

h = 0.25; % Step size

t = 0:h:5;

v = 4*t; % Velocity

T1 = trapz(t,v);

n = length(t);

F = 200; % Force in N

% Simpson's 1/3 rule

sum1 = 0; sum2 = 0;

for p = 2:2:n

sum1 = sum1 + (v(1,p));

end

for r = 3:2:n-1

sum2 = sum2 + (v(1,r));

end

S1 = (h/3)*(v(1,1)+v(1,end) + 4*sum1 + 2*sum2);%Displacement for 0=<t=<5

t = 5:h:15;

v = 20 + (5-t).^2; % Velocity

T2 = trapz(t,v);

n = length(t);

% Simpson's 1/3 rule

sum1 = 0; sum2 = 0;

for p = 2:2:n

sum1 = sum1 + (v(1,p));

end

for r = 3:2:n-1

sum2 = sum2 + (v(1,r));

end

  

S2 = (h/3)*(v(1,1)+v(1,end) + 4*sum1 + 2*sum2);%Displacement for 5=<t=<15

W1 = (S1+S2)*F;

fprintf('Work done by using Simpson 1/3rd rule is: %8.2f\n', W1);

W2 = (T1+T2)*F;

fprintf('Work done by using trapz command is: %8.2f\n', W2);



theta0 = (30*pi())/180;

k = sin(theta0);

L = 0.2; %Length of pendulum in m

g = 9.81; %Gravitational acceleration in m/s^2

f = @(x) 4*sqrt(L/g)./(sqrt(1-(k*sin(x)).^2));

T = integral(@(x)f(x),0,pi()/2);

fprintf('Integration by using integral command is: %6.4f\n', T);