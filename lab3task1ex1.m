close all
fsMHz = 10; % frequency, MHz
ip = [zeros(1,25) ones(1,75) zeros(1,25)]; % step input
N = 4096; % Number of points for frequency analysis 

k = 0.1;
[h1F f1] = freqz([0 k],[1 -(1-k)],N,'whole',fsMHz);
op1 = filter([0 k],[1 -(1-k)],ip);

k = 0.2;
[h2F f2] = freqz([0 k],[1 -(1-k)],N,'whole',fsMHz);
op2 = filter([0 k],[1 -(1-k)],ip);

figure
plot([-N/2:N/2-1]*fsMHz/N,20*log10(abs(fftshift(h1F))),'m.-');
hold on
plot([-N/2:N/2-1]*fsMHz/N,20*log10(abs(fftshift(h2F))),'c.-');
axis([-fsMHz/2 fsMHz/2 -25 3])
grid on
xlabel('frequency, MHz')
ylabel('20log10(abs(H)))')
title('Magnitude response of the filter')
legend('k=0.1', 'k=0.2') 

figure
plot([0:length(ip)-1]/fsMHz,ip,'b.-');
hold on
plot([0:length(op1)-1]/fsMHz,real(op1),'m.-');
hold on
plot([0:length(op2)-1]/fsMHz,real(op2),'c.-');
xlabel('time, \mus')
ylabel('amplitude');
title('step response')
grid on
axis([0 12.4 0 1.2])
legend('ip', 'op1 k=0.1', 'op2 k=0.2')
