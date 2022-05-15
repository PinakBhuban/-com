t=[0 2 4 6 8 10 12 14 16 18 20 22 24]

temp=[55 50 48 48.9 43 62.1 73.9 79 82 81 75 61 57.9]

hightemp = max(temp)

lowtemp = min(temp)

yr = (hightemp-lowtemp);                 % Range of ‘y’

yz = temp-hightemp+(yr/2);

meantemp = mean(temp)                 % Estimate offset

fit = @(a,t) (a(6)+t.^a(5)).*a(1).*(cosd(2*pi*t./a(2) + 2*pi/a(3))) + a(4);    % Function to fit

fcn = @(a) norm(fit(a,t) - temp);                                                  % Least-Squares fit

s = fminsearch(fcn, [yr; pi; -1; meantemp; 1; 1]);                                 % Minimise fit

xp = t;

figure(1)

plot(t,temp,'*b', xp,real(fit(s,xp)), 'r')

grid