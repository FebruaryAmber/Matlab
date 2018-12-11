% Define the voltage source
Vs = 10;
% Define the capacitor in the circuit
C = 10e-6;
% Define the time lapse that we're going to explore
t = 0 : 0.005 : 0.35;
 

% Define the resistors in each time constant and
% calculate the voltage across the capacitor
R1 = 5e3;
tau1 = R1*C;
V1 = Vs * ( 1 - exp(-t/tau1) );
 

R2 = 10e3;
tau2 = R2*C;
V2 = Vs * ( 1 - exp(-t/tau2) );
 

R3 = 20e3;
tau3 = R3*C;
V3 = Vs * ( 1 - exp(-t/tau3) );
 

% Plot the responses, all at once
plot(t, V1, 'b-', t, V2, 'ro', t, V3, 'k*')
grid on
title('Transient Analysis - RC circuit')
xlabel('Time (s)')
ylabel('Voltage across capacitor (V)')
legend(['RC_1 = ' num2str(tau1)],...
       ['RC_2 = ' num2str(tau2)],...
       ['RC_3 = ' num2str(tau3)], 'location', 'best')