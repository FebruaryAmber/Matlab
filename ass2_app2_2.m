M=32;%the number of samples
Wp=0.6*pi;%passband cutoff frequency
m=0:M/2;%the sampling points
Wm=2*pi*m./(M+1);%stopband cutoff frequency
mtr=ceil(Wp*(M+1)/(2*pi));%round to positive part,i.e.ceil(3.5)=4;ceil(-3.2)=-3;
Ad=[Wm>=Wp];
Ad(mtr)=0.28;
Hd=Ad.*exp(-j*0.5*M*Wm);%define frequency-domain sampling vector H(k))
Hd=[Hd conj(fliplr(Hd(2:M/2+1)))];
%fliplr is to realize the fliplr of matrix and conj is the conjugate
h=real(ifft(Hd));%h(n)=IDFT[H(k)]
w=linspace(0,pi,1000);%get 1000 row vectors between 0 and pi
H=freqz(h,[1],w);%the amplitude -frequency characteristic diagram of the filter
figure(1)
plot(w/pi,20*log10(abs(H)));%parameters are respectively the noemalized frequency and amplitude
xlabel('the normailzed frequency');ylabel('gian/dB');title('The gain response of highpass filter');
axis([0 1 -50 0]);
f1=200;f2=700;f3=800;%the frequencies of sines signal that needs filtered
fs=2000;%the sample frequency
figure(2)
subplot(211)
t=0:1/fs:0.25;%define the time domain and steplength
s=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);%signal before filtering
plot(t,s);%plot the diagram before filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram before filtering');
subplot(212)
Fs=fft(s,512);%transform to the frequency domain
AFs=abs(Fs);%the amplitude
f=(0:255)*fs/512;%frequency sampling
plot(f,AFs(1:256));%plot the frequency domain diagram before filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram before filtering');
figure(3)
sf=filter(h,1,s);%use function filter
subplot(211)
plot(t,sf)%plot the diagram after filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram after filtering')
axis([0.2 0.25 -2 2]);%set the range of image coordinates
subplot(212)
Fsf=fft(sf,512);AFsf=abs(Fsf);
f=(0:255)*fs/512;%frequency sampling
plot(f,AFsf(1:256))%plot the frequency domain diagram before filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram after filtering');