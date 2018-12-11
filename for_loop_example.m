clc
clear
k = [1:2:15]; %sets a sequence for 'k' odd numbers only, 1,3,5,...etc.
fs = 44100; %Standard sampling rate for audio signals
Ts = 1/fs; %Time step
t = 0:Ts:2-Ts; %time boundaries (2 periods of signal)
x1 = 0; %Initial value for 'x1' variable
L = length(t); %Length of vectore t
F = fs/L; %Frequency step size
f = (-fs/2):F:(fs/2)-F; %Frequency vector boundaries
y1 = 0.5*square(800*pi*t, 50); %Original Signal
for N = k
xt = (2/(pi*N))*sin(800*pi*N*t); %'xt' represents the Nth signal
x1 = x1 + xt; %Adds signal x1 into itself with the added Nth signal
end
figure(1)
plot(t,x1), axis([0 0.005 -1 1]) %plots signal 'x' vs t displaying two
periods
title('x_1(t) Synthesised with Fourier Series Synthesis')
xlabel ('Time (s)'), ylabel('Amplitude (unit(s))')
soundsc(x1,fs);
figure(2); %Shows comparison between oringal and synthesised signal
subplot(2,1,1);
plot(t,y1), axis([0 0.005 -1 1]);
title('Original Signal x_1(t)')
xlabel ('Time (s)'), ylabel('Amplitude (unit(s))')
subplot(2,1,2);
plot(t,x1), axis([0 0.005 -1 1]);
title('x_1(t) Synthesised');
xlabel ('Time (s)'), ylabel('Amplitude (unit(s))')