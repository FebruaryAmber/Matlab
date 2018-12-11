fs = 44100; % Sampling rate (44100 is CD quality)
Ts = 1/fs; % Step-size (resolution) of simulation 
t = 0:Ts:2-Ts; % 2 second time array
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F; %Your new frequency array!!!!!

x1 = cos(800*pi*t); 
subplot(2,1,1),plot(t,x1);
axis([0 0.02 -1.6 1.6]);
title('x1(t) and fft')
xlabel('t');
ylabel('x1(t)');

x1=fftshift(fft(x1))/N;
%f=(-fs/2):F:(fs/2)-F;
subplot(2,1,2),plot(t,abs(x1));
axis([0.8 1.2 0 1.2]);
xlabel('t');
ylabel('fft');