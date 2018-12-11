ts=0.01;

t1 = 0:ts:1;
%t2 = 0:ts:1;

%x = heaviside(t);

x1 = 2*cos(160*pi*t1);
%x2 = 4*cos(160*pi*t2-(4*pi)/5);

plot(t1,x1);
%plot(t2,x2);

axis([-0.5 3 -5 5]);
title('Rectangular Pulse');
xlabel('Time, sec');
ylabel('x(t)');