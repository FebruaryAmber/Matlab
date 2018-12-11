%% task 4
% t=0:Ts:T-Ts;
% N = length(a); %length of time array
% F = fs/N; %Frequency step-size
% f = (-fs/2):F:(fs/2)-F; %Your new frequency array!!!!?
[a,fs1]=audioread('lfm_11khz.wav');
Ts1=1/fs;
N = length(a);
L=N*Ts1;
t=0:Ts:L-Ts;
F = fs1/N; %Frequency step-size
f = (-fs1/2):F:(fs1/2)-F;
w1=2*pi*(f/fs1);
[b,fs2]=audioread('lfm_22khz.wav');
Ts2=1/fs2;
N2 = length(b);
L2=N2*Ts2;
t2=0:Ts2:L-Ts2;
F2 = fs2/N2; %Frequency step-size
f2 = (-fs2/2):F:(fs2/2)-F2;
w2=2*pi*(f2/fs2);
[c,fs3]=audioread('lfm_44khz.wav');
Ts3=1/fs3;
N3 = length(c);
L3=N3*Ts3;
t3=0:Ts3:L-Ts3;
F3 = fs3/N3; %Frequency step-size
f3 = (-fs3/2):F:(fs3/2)-F2;
w3=2*pi*(f3/fs3);
A=fftshift(fft(a))*Ts1;
figure (1)
plot(f,abs(A));
axis([-4000 4000 0 0.5])
figure (2)
plot(w1,abs(A));
B=fftshift(fft(b))*Ts2;
figure (3)
plot(f2,abs(B));
axis([-4000 4000 0 0.5])
figure (4)
plot(w2,abs(B));
C=fftshift(fft(c))*Ts3;
figure (5)
plot(f3,abs(C));
axis([-4000 4000 0 0.5])
figure (6)
plot(f3,abs(C));
