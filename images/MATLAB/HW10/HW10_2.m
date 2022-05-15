

function Sn = SimpsonsFunction(funct, intgLower, intgUpper, numIntervals)

   

    % check for the boundary(limits) condition

    % if error found, display error message

    if (intgLower > intgUpper)

        error('The upper bound must be greater than lower bound of an integral');

    end

   

    % find the intervals

    numSegment = (intgUpper - intgLower) / numIntervals;

   

    % define a linespace

    x = linspace(intgLower, intgUpper, numSegment+1);   

   

    % initialize the evenSum value

    evenSum = 0;

   

    % find the integral value at even intervals

    for i = 1 : 2: numIntervals-1

        evenSum = evenSum + funct(intgLower + i * numSegment);

    end

   

    % initialize the oddSum value

    oddSum = 0;

   

    % find the integral value at odd intervals

    for i = 2: 2: numIntervals - 2

        oddSum = oddSum + funct(intgLower + i * numSegment);

    end

   

    % compute the overall sum value of the integrals

    estimatedSum = funct(intgLower) + (4 * evenSum) + (2 * oddSum) + funct(intgUpper);

   

    % find the correct simpsons value and return its

    Sn = (numSegment / 3) * estimatedSum;  

end

% WorkDone function

function totalWorkDone = WorkDone(n)

   

    % work done is given by dw = F * ds

    % where ds = v * dt.

    % velocities, force and time intervals are provided.

    % so, the work done can be computed in the following ways.

   

    %wd = firstInterval's (v*dt) + secondInterval'(v*dt)

    V_first = @(t) 4 * t;

    V_second = @(t) 20 + (5 - t)^2;

    Force = 200;

   

    % call the function SimpsonsFunction() for the first interval

    firstInterval = SimpsonsFunction(V_first, 0, 5, n);

   

    % call the fucntion SimposonsFunction() for the second interval

    secondInterval = SimpsonsFunction(V_second, 5, 15, n);

   

    % compute the total workdone.

    totalWorkDone = Force * (firstInterval + secondInterval);

end

% test code for the WorkDone

n = 10;


 
% workdone by using the function WorkDone() and simpsons rule.

Simp_WorkDone = WorkDone(n)


 
F = 200;
V1 = 0:0.1:5;
V2 = 5:0.1:15;
VV1 = 4 .* V1;
VV2 = 20 + V2.^2 + 25 - (10 .*V2);
% workdone by using the function trapz() 
Trapz_WorkDone = F * (trapz(V1, VV1) + trapz(V2, VV2))