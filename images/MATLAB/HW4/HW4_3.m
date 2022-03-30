clc;
clear;
V = [10;20;100];
R= [20 10 25 10 30];
A = [ R(1)+R(2), -R(1), -R(2);
-R(1) , R(4)+R(1)+R(3) , -R(4);
-R(2) , -R(4) ,R(4)+R(5)+R(2)];
curr = A\V;
fprintf('current1 is %4.2f.\n current2 is %4.2f.\n current3 is %4.2f.\n ',curr(1),curr(2),curr(3))

fprintf('T1 is %4.2f.\n T2 is %4.2f.\n T3 is %4.2f.\n T4 is %4.2f.\n T5 is %4.2f.\n T6 is %4.2f.\n ',T(1),T(2),T(3),T(4,T(5),T(6)))