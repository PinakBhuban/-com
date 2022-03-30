clear; clc; close all;
f = @(x) 2*x.*cos(2*x) - (x-2).^2;
fplot(f);
set(gca,'XAxisLocation','origin')

xlim([2 4])
ylim([-2 5])
xlabel('x')
ylabel('f(x)')
grid on

c = bisection(f,[2,3],1e-6);
hold on
plot(c,f(c),'r*')
fprintf('Root1: %.4f\n',c)

c = bisection(f,[3,4],1e-6);
plot(c,f(c),'r*')
fprintf('Root2: %.4f\n',c)