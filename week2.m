% x(t-2)

Ts = 0.001;
t_start = -5;
t_end = 5;

t=t_start:Ts:t_end;

x=heaviside(t-2);
plot(t,x);
xlabel('t');
ylabel('x');
axis{[-5 5 -2 2]};


%x(t)=20cos(80*pi*t-0.4*pi)

