Ts=1/44100;
fs=1/Ts;
F=fs/N;
f=(-fs/2):F:(fs/2)-F;

t4 = 0:0.001:0.7;
t5 = 0.7:0.001:0.9;
t6 = 0.9:0.001:1.5;
t= [t4 t5 t6];
x4=zeros(size(t4));
x5=ones(size(t5));
x6=zeros(size(t6));
x=[x4 x5 x6];
figure(2);
subplot(2,1,1),plot(t,x);
axis([0.5 1.0 0 1.5]);
title('x(t) and fft(x)');
xlabel('t');
ylabel('y(t)');

x=fftshift(fft(x))/N;
subplot(2,1,2),plot(t,abs(x));
axis([0.7 0.8 0 0.2]);
xlabel('t');
ylabel('fft');
