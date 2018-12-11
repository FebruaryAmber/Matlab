fs = 44100;
Ts = 1/fs;
t = 0:Ts:2-Ts;


duty = 50;

t = 0:0.001:2;

f = 0.5;

x = square(2*pi*f*t,duty);

plot(t,x)

axis([0 8 -1.5 1.5])

grid on