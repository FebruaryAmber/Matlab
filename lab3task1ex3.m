n = 0:255;
t = n/256;
f1 = 10000;
omega = 2*pi*f1;
x = cos(omega*t);
subplot(3,3,1);
plot(t,x)
xlabel('time (s)')
ylabel('amplitude')
title('Sine waive x(t)')
X=fft(x)/256;
subplot(3,3,2);
plot(0:63, abs(X(1:64)))
xlabel('frequency (HZ)')
ylabel('amplitud')
title('Spectrum X')
n = 0:255;
t = n/256;
x = [ ones(1,64),-ones(1,64), ones(1,64), -ones(1,64)];
subplot(3,3,3);
plot(t,x);
X=fft(x)/256;
f=0:255;
fo=10000;
H= (1/(sqrt(1+(f/fo)^2)));
H(1:3)= ones(1,3);
H(254:256)= ones(1,3);
Y= H.*X;
subplot(3,3,4);
plot(t,Y)