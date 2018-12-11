Fs = 0;
[y, Fs]=audioread('string.wav');
Fs;

% plot original sound wav 
%plot(y);
%sound(y,Fs);

v=diff(y);
plot(v);
soundsc(v,Fs);
title('differentiate sound wav');
xlabel('t');
ylabel('v');