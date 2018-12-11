Fs = 44100;
Ts = 1 / Fs; %Sampling period
t = 1; %time >> Remove
dt = 0:Ts:t-Ts; %Signal length
Nh = 19; %Number of harmonics >> Remove
n = 1; %Starting number of harmonics
f = 440; %Input frequency >> Remove %Yt = 0;
y = zeros(1,t); %Prepare output for values
for n = 1 : Nh; %
v(n) = (1/n)*sin(n*2*pi*f*dt); %Square wave equation (without pi/4)
y = y + v(n); %Add wave to y
n = n + 1;
end

sound(y,Fs); %Output sound