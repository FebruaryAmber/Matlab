Ts=0.001;
t=-0.1:Ts:0.1;
N=length(t);

x=cos(2*pi*100*t);%100
x=fftshift(fft(x))/N;

fs=1/Ts;
F=fs/N;
f=(-fs/2):F:(fs/2)-F;

figure(1);
subplot(2,1,1),plot(t,x);
xlabel('time (sec)');
ylabel('x(t)');
subplot(2,1,2),plot(f,abs(x));
xlabel('freq (Hz)');
ylabel('x(t)');