%question 1 graph

Ts=0.00001;
t=0:Ts:0.03;
x = 3.5*sawtooth(2*200*pi*t-pi);
plot(t,x);
title('sawtooth graph');
%axis([0 0.03 -4 4]); 
xlabel('t');
ylabel('x');