fs = 44100; % Sampling rate (44100 is CD quality)
Ts = 1/fs; % Step-size (resolution) of simulation 
t = 0:Ts:2-Ts; % 2 second time array
N = length(t); %length of time array
F = fs/N; %Frequency step-size
f = (-fs/2):F:(fs/2)-F;

x = heaviside(t+0.5)-heaviside(t-0.5);
subplot(2,1,1),plot(t,x);
axis([0 1 0 1.2]);

x=fftshift(fft(x))/N;
%f=(-fs/2):F:(fs/2)-F;
subplot(2,1,2),plot(f,abs(x));
%axis([-0.5 0.5 0 1.2]);
xlabel('f');
ylabel('fft');