clc

clear all
close all
format long
x=[0:0.2:1];
y=[0,7.78,10.68,8.38,3.97,0];
EI=1.2*10^7;
Dy=(y(2)-y(1))/(x(2)-x(1));
for i=2:length(x)-1
Dy(i)=(y(i+1)-y(i-1))/(x(i+1)-x(i-1));
end
Dy(end+1)=(y(end)-y(end-1))/(x(end)-x(end-1));
y=Dy;
Dy=[];
Dy=(y(2)-y(1))/(x(2)-x(1));
for i=2:length(x)-1
Dy(i)=(y(i+1)-y(i-1))/(x(i+1)-x(i-1));
end
Dy(end+1)=(y(end)-y(end-1))/(x(end)-x(end-1));
for i=1:length(Dy)
fprintf('At x=%.1f m, M=%f\n',x(i),-EI*Dy(i));
end