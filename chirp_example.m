Fs=1000; % sample rate 
tf=2; % 2 seconds
t=0:1/Fs:tf-1/Fs;
f1=100;
f2=400; 
semi_t=0:1/Fs:(tf/2-1/Fs);
sl=2*(f2-f1/2);
f1=f1*semi_t+(sl.*semi_t/2);
f2=f1(end)+f2*semi_t-sl.*semi_t/2;
f=[f1 f2];
y=1.3*cos(2*pi*f.*t);
plot(t,y)
soundsc(y,Fs)
