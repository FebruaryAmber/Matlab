close all;
clear all;
clc;

t = linspace(-4,4,16384);

x = 0*t;
ind = t>=-1 & t<=0;
x(ind) = 1+t(ind);
ind = t>=0 & t<1;
x(ind) = 1 -t(ind);


z = median(diff(t))*conv(x,x,'same');

figure;
plot(t,x,'linewidth',2);
xlabel('t');
ylabel('x(t)');
title('Convolution');

ylim([0 1.5]);
set(gca, 'fontsize', 14,'foutweight','bold');

grid on;

