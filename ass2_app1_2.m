Rs=0.01;fs=8000;%sample frequency
fcuts=[1000 1300 2210 2410];a=[0 1 0];
dev=Rs*ones(1,length(a));
[M,Wc,beta,ftype]=kaiserord(fcuts,a,dev,fs);
%M is the minimum order of filter that meets the requirements
%Wc is cutoff frequency
M=mod(M,2)+M;
window=kaiser(M+1,beta);
b=fir1(M,Wc,ftype,window);
[h,f]=freqz(b,1,512);%amplitude-frequency characteristic diagram
%[H,W]=freqz(B,A,N) when N is an integer, function returns to N frequency
%vector and amplitude-frequency response vector
figure(1)
plot(f*fs/(2*pi),20*log10(abs(h)))% parameters are respectively frequecy and amplitude
xlabel('frequency/Hz');ylabel('gain/dB');title('The gain response of bandpass filter');
f1=500;f2=1500;f3=2000;f4=3000;%frequencies of sines signal that needs filtered
t=(0:200)/fs;%define the time steplength
t1=(0.002:0.00001:0.006);
s=sin(2*f1*pi*t)+sin(2*f2*pi*t)+sin(2*f3*pi*t)+sin(2*f4*pi*t);
s1=sin(2*f1*pi*t1)+sin(2*f2*pi*t1)+sin(2*f3*pi*t1)+sin(2*f4*pi*t1);
sf=filter(b,1,s);%use function filter
figure(2)
subplot(211)
plot(t1,s1);%plot the diagram before filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram before filtering');
subplot(212)
36
Fs=fft(s,512);AFs=abs(Fs);f=fs/512*(0:255);
plot(f,AFs(1:256));%plot the frequency domain diagram before filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram before filtering');
figure(3)
subplot(211)
plot(t,sf)%plot the diagram after filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram after filtering');
axis([0.005 0.025 -4 4]);
subplot(212)
Fsf=fft(sf,512);%frequency-domain diagram after filtering
AFsf=abs(Fsf);%the amplitude
f=(0:255)*fs/512;%frequency sampling
plot(f,AFsf(1:256))%plot the frequency domain diagram after filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram after filtering');