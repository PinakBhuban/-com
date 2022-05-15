c=[.5 .8 1.5 2.5 4];
k=[1.1 2.5 5.3 7.6 8.9];
x=1./(c.^2);
y=1./k;
p=polyfit(x,y,1);
kmax=1./(p(2));
cs=kmax*p(1);
cc=.1:.1:5;
kk=kmax*cc.^2./(cs+cc.^2);
fprintf('cs: %f\nkmax: %f\n',cs,kmax)
fprintf('Predicted growth rate at c = 2 mg/L: %f\n',kmax*2^2./(cs+2^2))
plot(c,k,'o',cc,kk)
legend('data points','fitted curve','location','best')
xlabel('c')
ylabel('k')
title(['k_{max} = ',num2str(kmax),' c_s = ',num2str(cs)])
grid 