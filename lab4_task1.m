fs=16000;
Ts=1/fs;
T=10;
t=0:Ts:T-Ts;
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F; %Your new frequency array!!!!!
x=cos(2*pi*(100+5*t).*t); % range 100Hz 200Hz  singal side bandwidth 200Hz   above  400Hz
plot(t,x);
figure (1)
X=fftshift(fft(x))*Ts;
figure (2)
plot(f,abs(X));
