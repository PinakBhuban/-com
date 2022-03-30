fclcunction cval = x(rate)

c01=1;

c02=2;

c03=1;

c04=2;

c06=1;

c07=1;

c08=1;



r12=6;r15=2;r23=5;r26=5;r36=8;r41=5;r45=1;r48=1;

r52=1;r58=2;r59=1;r69=15;r74=4;r87=2;r89=3;



r90=(sum(rate));

r01=rate(1);

r02=rate(2);

r03=rate(3);

r04=rate(4);

r06=rate(5);

r07=rate(6);

r08=rate(7);



cval = zeros(1,9);



val1=1;val2=0.0005;iter=0;


while max(val1) > val2 && iter < 25

ovalue = cval;



cval(1) = (r01*c01+r41*cval(4))/(r12+r15);

cval(2) = (r02*c02+r12*cval(1)+r52*cval(5))/(r23+r26);

cval(3) = (r03*c03+r23*cval(2))/r36;

cval(4) = (r04*c04+r74*cval(7))/(r41+r48+r45);

cval(5) = (r15*cval(1)+r45*cval(4))/(r52+r58+r59);

cval(6) = (r06*c06+r26*cval(2)+r36*cval(3))/r69;

cval(7) = (r07*c07+r87*cval(8))/r74;

cval(8) = (r08*c08+r58*cval(5)+r48*cval(4))/(r87+r89);

cval(9) = (r59*cval(5)+r69*cval(6)+r89*cval(8))/r90;


val1 = abs((cval-ovalue)./cval)*100;
fprintf(' concentration of each tank\n %d = %.4f g/L\n',[1:9;cval])

end

end




