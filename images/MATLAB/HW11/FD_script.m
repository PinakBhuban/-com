t= [200 202 204 206 208 210];
A= [0.75 0.72 0.70 0.68 0.67 0.66];
r= [5120 5370 5560 5800 6030 6240];
[vel,acc] = radar_config(t,r,A);
[n,~]= size(vel);
for i= 1:n
    if (i==1 || i==n)
        fprintf('velocity vector for time %g is NULL\n',t(i));
        fprintf('Acceleration vector for time %g is NULL\n',t(i));
        fprintf('************\n');
    else
        fprintf('velocity vector for time %g is %g er+ %g et\n',t(i),vel(i,1),vel(i,2));
        fprintf('Acceleration vector for time %g is %g er+ %g et\n',t(i),acc(i,1),vel(i,2));
        fprintf('********\n');
    end 
end
