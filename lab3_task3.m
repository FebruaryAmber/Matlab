t = linspace(0,1,1000); 
A = 1; 
f = 8000; 
phi = 1/sqrt(2);

y = A*sin(2*pi*f*t + phi); 
plot(t , y)

Y = fft(y);
plot(t,res); 
res1 = abs(y); 
plot(t,res1);

absSIG = abs(Y); 
phaseSIG = angle(Y); 
figure(2);
plot(t,phaseSIG); 

figure(3)
%absSIG = abs(Y); 
plot(t,absSIG); 
