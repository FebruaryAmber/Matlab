Rs=0.01;fs=200;%sample frequency
fcuts=[10 20 40 50 60 70 80 90];a=[0,1,0,1,0];
dev=Rs*ones(1,length(a));
[M,Wc,beta,ftype]=kaiserord(fcuts,a,dev,fs);
M=mod(M,2)+M;window=Kaiser(M+1,beta);b=fir1(M,Wc,ftype,window);
[h,f]=freqz(b,1,512);%amplitude-frequency characteristic graph
figure(1)
plot(f*fs/(2*pi),20*log10(abs(h)))%parameters are respectively frequency and amplitude
xlabel('frequency/Hz');ylabel('gain/dB');title('The gain response of multi-passband filter');
f1=5;f2=20;f3=30;f4=55;f5=75;f6=95;%frequencies of sines signal that needs filtered
t=(0:200)/fs;%define the time steplength
s1=sin(2*f1*pi*t)+sin(2*f2*pi*t)+sin(2*f3*pi*t);
s=s1+sin(2*f4*pi*t)+sin(2*f5*pi*t)+sin(2*f6*pi*t);%the signal before filtering
sf=filter(b,1,s);%use function filter
figure(2)
subplot(211)
plot(t,s);%plot the diagram before filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram before filtering');
subplot(212)
Fs=fft(s,512);AFs=abs(Fs);f=fs/512*(0:255);
plot(f,AFs(1:256));%plot the frequency domain diagram before filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram before filtering');
figure(3)
subplot(211)
plot(t,sf)%plot the diagram after filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram after filtering');
subplot(212)
Fsf=fft(sf,512); AFsf=abs(Fsf);%the amplitude
f=(0:255)*fs/512;%frequency sampling
plot(f,AFsf(1:256))%plot the frequency domain diagram after filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram after filtering');