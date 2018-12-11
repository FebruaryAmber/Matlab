f = 50;
Ts = 1/44100;
t = 0:Ts:0.1-Ts;
w = 2*pi*f;
j = 1i;
x = exp(j*w*t);
a = real(x);
b = imag(x);



ax1 = subplot(3,1,1);
plot(ax1,t,a);
title(ax1,'Real');
xlabel('t');
ylabel('real');

ax2 = subplot(3,1,2);
plot(ax2,t,b)
title(ax2,'Imaginary');
xlabel('t');
ylabel('imag');

ax3 = subplot(3,1,3);
plot(ax3,x)
title(ax3,'Exponential');
xlabel('t');
ylabel('x');
