%% task3
fs=16000;
Ts=1/fs;
T=10;
t=0:Ts:T-Ts;
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F; %Your new frequency array!!!!?
x=cos(2*pi*(100+5*t).*t);
fp=1600;
p=0.5*(1+square(2*fp*pi*t, 0.1));
y=x.*p;
Y=fftshift(fft(y))/N;
figure (1)
plot(t,y);
axis([0 0.1 -1 1])
figure (2)
plot(f,abs(Y));
axis([-2000 2000 0 1*10^-3])