clc, clear all, clf;


tf=2; % 2 seconds
t=0:0.5:5;
f1=400;
f2=1000; % start @ 100 Hz, go up to 400Hz
semi_t=0:1/Fs:(tf/2-1/Fs);
sl=2*(f2-f1/2);
f1=f1*semi_t+(sl.*semi_t/2);
f2=f1(end)+f2*semi_t-sl.*semi_t/2;
f=[f1 f2];
y=1.33*cos(2*pi*f.*t);
plot(t,y)