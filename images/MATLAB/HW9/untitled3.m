Current = [0.5 1.25 1.5 2.25 3.0 3.2 3.5]';
Power = [1.20 7.50 11.25 25.00 45.00 50.00 65.00]'; % saving data to matrices

%%%%%%%%%%%%%%%%%%%% Linear fit to data %%%%%%%%%%%%%%%%%%%%%%%%
f_linear=fit(Current,Power,'poly1') % function for linear fit
figure;
plot(f_linear,Current,Power);        % plotting data
title('Linear approximation');
xlabel('Current');
ylabel('Power');
grid;

%%%%%%%%%%%%%%%%%%%% Parabolic fit to data %%%%%%%%%%%%%%%%%%%%%%%%
f_quad=fit(Current,Power,'poly2')     % function for parabolic fit
figure;
plot(f_quad,Current,Power);           % plotting data
title('Quadratic approximation');
xlabel('Current');
ylabel('Power');
grid;

%%%%%%%%%%%%%%%%%%%% Power fit to data %%%%%%%%%%%%%%%%%%%%%%%%
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Upper',[Inf,max(Current)],...
               'StartPoint',[1]);
ft = fittype('a/(x^n)','problem','n','options',fo);   % defining power function
[curve2,gof2] = fit(Current,Power,ft,'problem',1)     % function for power fit   
figure;
plot(Current,Power,'o');           % plotting data
hold;
plot(curve2,'r')
title('Power approximation');
xlabel('Current');
ylabel('Power');
grid;

%%%%%%%%%%%%%%%%%%%% Exponential fit to data %%%%%%%%%%%%%%%%%%%%%%%%
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Upper',[Inf,max(Current)],...
               'StartPoint',[1]);
ft = fittype('a*exp(x^n)','problem','n','options',fo);   % defining exponential function
[curve2,gof2] = fit(Current,Power,ft,'problem',1)     % function for power fit   
figure;
plot(Current,Power,'o');           % plotting data
hold;
plot(curve2,'r')
title('Exponential approximation');
xlabel('Current');
ylabel('Power');
grid;

%%%%%%%%%%%%%%%%% Extracting parameters from quadratic fit object%%%%%%%%%%%%%%%
R = f_quad.p1;
i=4;
Current(length(Current)+1)=i; %Extending current array to include 4
Power(length(Power)+1) = i*i*R;

%%%%%%%%%%%%%%%%%%%Replotting the data%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f_quad=fit(Current,Power,'poly2')     % function for extended parabolic fit
figure;
plot(f_quad,Current,Power);           % plotting data
title('Extended curve with best fit');
xlabel('Current');
ylabel('Power');
grid;

fprintf('The power for current of 4 amps is %d',Power(end))