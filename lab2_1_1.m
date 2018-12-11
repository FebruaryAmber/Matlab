Ts=1/44100;
fs=1/Ts;


t1 = -0.002:0.0001:0;
t2 = 0:0.0001:0.002;
t3 = 0.002:0.0001:0.004;
t4 = 0.004:0.0001:0.006;
t5 = 0.006:0.0001:0.008;

N = length(t);
F=fs/N;
x1=zeros(size(t1));
x2=1.5*ones(size(t2));
x3=zeros(size(t3));
x4=1.5*ones(size(t4));
x5=zeros(size(t5));
x=[x1 x2 x3 x4 x5];

t=[t1 t2 t3 t4 t5];
        

figure(1);
subplot(2,1,1),plot(t,x);
axis([-0.002 0.008 0 1.6]);
title('x(t) and fft')
xlabel('t');
ylabel('x(t)');

x=fftshift(fft(x))/N;
f=(-fs/2):F:(fs/2)-F;
subplot(2,1,2),plot(t,abs(x));
%axis([-0.002 0.008 -0.1 1]);
xlabel('t');
ylabel('fft');
