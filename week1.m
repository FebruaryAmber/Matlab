Basic MATLABS code for plotting a sine wave graph:
L = 5; %Length of the signal
Ts = 0.001; %time-step of 0.001s, makes time descrete.
t = 0:Ts:L-Ts; % creates a time array, used for time ranges.
               % states 0:0.001:4.999 = from 0 to 5 seconds.
               
x = sin(2 * pi * t);
 
plot(t,x);



Unit Step functions (Heaviside):
L = 5;
t = -L:0.001:L;
u = heaviside(t);
u2 = heaviside(t-2); %Shifts step-function RIGHT by 2
U3 = heaviside(t+3); %Shifts step-function LEFT by 3
 
plot(t,u);
Hold on %holds then plots the follow code
plot(t,u2);
plot(t,u3);

%DIFFRENT OPTION TO DISPLAY GRAPH
plot(t,u,t,u2,t,u3); %this is long way is display all data on graph.

xlabel('t');
ylabel('u(t)');


MATLAB Quiz Question 1:

%x(t) = u(t+3/2) - u(t-3/2)
a = 1;
T = 3;
t = -3:0.001:3;
 
x = a*( heaviside(t+(1/2*T))-heaviside(t-(1/2*T)) );
 
plot(t,x);
 
xlabel('t');
ylabel('x(t)');