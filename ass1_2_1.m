%Question 2 1

Ts=1/44100;
fs=1/Ts;



t1 = -1:0.001:-0.1;
t2 = -0.1:0.001:0.1;
t3 = 0.1:0.001:1;
t= [t1 t2 t3];

N = length(t);
F=fs/N;
f=(-fs/2):F:(fs/2)-F;

x1=zeros(size(t1));
x2=ones(size(t2));
x3=zeros(size(t3));
x=[x1 x2 x3];

figure(1);
subplot(2,1,1),plot(t,x);
axis([-1 1 0 1.5]);
title('x(t) and fft')
xlabel('t');
ylabel('x(t)');

x=fftshift(fft(x))/N;

subplot(2,1,2),plot(t,abs(x));
axis([-0.08 0.08 0 0.11]);
xlabel('t');
ylabel('fft');

