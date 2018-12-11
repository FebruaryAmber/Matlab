a = 1;
T = 3;
t = -3:0.001:3;
 
x = a*( heaviside(t+(1/2*T))-heaviside(t-(1/2*T)) );
 
plot(t,x);
axis([-4 4 -1 2]);
xlabel('t');
ylabel('x(t)');