f = @(x) 2*x.*cos(2*x) - (x-2).^2;
fplot(f);
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')
xlim([0 4])
ylim([-5 5])
xlabel('x')
ylabel('f(x)')
grid on

c = bisection(f,[2,3],1e-6);
hold on
plot(c,f(c),'rx')
fprintf('Root: %.4f\n',c)

c = bisection(f,[3,4],1e-6);
plot(c,f(c),'rx')
fprintf('Root: %.4f\n',c)