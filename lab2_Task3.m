clc, clear all, clf;
fs = 44100; % Sampling rate (44100 is CD quality)
Ts = 1/fs; % Step-size (resolution) of simulation 
t = 0:Ts:5;
%f = 400:0.5:1000;
N = length(t); %length of time array
F = fs/N; %Frequency step-size

f1=400;
f2=1000;
%semi_t=0:1/Fs:(tf/2-1/Fs);
%sl=2*(f2-f1/2);
%f1=f1*semi_t+(sl.*semi_t/2);
%f2=f1(end)+f2*semi_t-sl.*semi_t/2;

u = (f2-f1)/(2*5);
s3 =u.*t.*t;
f0 = [f1 f2];
x = cos(2*pi*f1*t+s3);
subplot(2,1,1),plot(t,x);
%axis([0 0.02 -1.6 1.6]);
title('x(t) and fft')
xlabel('t');
ylabel('x(t)');
soundsc(x,fs)

x=fftshift(fft(x))/N;
f=(-fs/2):F:(fs/2)-F;
subplot(2,1,2),plot(t,abs(x));
%axis([1.5 3.5 0 0.12]);
xlabel('t');
ylabel('fft');