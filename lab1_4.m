Ts = 0.01;
t = -5:Ts:5-Ts;
Td=2;
u=myfunc(t,Td);

plot(t,u);
title('myfunc');
xlabel('t');
ylabel('u');
axis([-5 5 -0.5 2.5]);
