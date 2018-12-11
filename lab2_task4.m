clc, clear all, clf;

fs = 44100; % Sampling rate (44100 is CD quality)
Ts = 1/fs; % Step-size (resolution) of simulation 
t = 0:Ts:2-Ts; % 2 second time array
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F;

j=sqrt(-1);
x=sinc(f).*exp(-j.*2.*pi.*f);

subplot(2,1,1),plot(f,x);
axis([-10 10 -1.2 1.2]);
xlabel('f');
ylabel('ifft');

x=ifftshift(ifft(x))/N;
subplot(2,1,2),plot(t,abs(x));
xlabel('t');
ylabel('ifft');
