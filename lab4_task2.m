%% task2
fs=16000;
Ts=1/fs;
T=10;
t=0:Ts:T-Ts;
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F; %Your new frequency array!!!!!
fp=800;
p=0.5*(1+square(2*fp*pi*t, 0.1));
figure (1)
plot(t,p);
axis([0 0.00625 0 1])
P=fftshift(fft(p))/N;
figure (2)
plot(f,abs(P));
axis([-2000 2000 0 0.06])