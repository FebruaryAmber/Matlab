Ts=1/44100;
t=0:Ts:2-Ts;
N=length(t);
x=cos(1000*pi*t+200*pi*t.^2);
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
axis([-1000 1000 0 0.06]);