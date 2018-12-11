clc
close all
clear all

R=2000; % resistance of RC circuit in Ohms
C=1e-9;  % capacitance of RC circuit in Farads
V=50;  % Applied voltage in Volts

tau=R*C;   % time constant of RC circuit

T=3000;   % maximum time limit in millisecond
t=(1:T)./1000;

q=C*V*(1-exp(-t/(R*C)));
I=(V/R).*(exp(-t/(R*C)));
Imax=(V/R);
Qmax=(C*V);

figure (1)
   plot(t,q,'linewidth',2)


 
   xlabel('t (sec)','fontSize',14);
   ylabel('Q (Coulombs)','fontSize',14);
   title('charge vs time','fontsize',14)

   
   figure(2)
   plot(t,I,'linewidth',2)
   xlabel('t (sec)','fontSize',14);
   ylabel('I (amp)','fontSize',14);
   title('current vs time','fontsize',14)
