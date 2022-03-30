
function T=Temp(E)
E(1)=80;
E(2)=120;
E(3)=60;
EMat=[E(1)+E(2);E(1);E(1)+E(3);E(1)+E(3);E(1);E(1)+E(2)];
Coeff=[4 -1 0 0 0 -1;-1 4 -1 0 -1 0;0 -1 4 -1 0 0;0 0 -1 4 -1 0;0 -1 0 -1 4 -1;-1 0 0 0 -1 4];
T=Coeff\EMat;
fprintf('T1 is %.4f .\n T2 is u_2 is %.4f .\n T3 is %.4f .\n T4 is %.4f .\n T5 is %.4f .\n T6 is %.4f .\n',T(1),T(2),T(3),T(4),T(5),T(6))
