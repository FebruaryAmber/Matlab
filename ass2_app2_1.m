M=63; Wp=0.5*pi;%the number of samples and the passband cutoff frequency
m=0:(M+1)/2; Wm=2*pi*m./(M+1);%the sampling points and the stopband cutoff frequency
mtr=floor(Wp*(M+1)/(2*pi))+2;%round to negative part,i.e.floor(3.5)=3;floor(-3.2)=-4
Ad=[Wm<=Wp];Ad(mtr)=0.38;
Hd=Ad.*exp(-j*0.5*M*Wm);%define frequency-domain sampling vector H(k)
Hd=[Hd conj(fliplr(Hd(2:(M+1)/2)))];
%fliplr is to realize the fliplr of matrix and conj
h=real(ifft(Hd));% h(n)=IDFT[H(k)
w=linspace(0,pi,1000);%get 1000 row vectors between 0 and pi
H=freqz(h,[1],w);%the amplitude -frequency characteristic diagram of the filter
figure(1)
plot(w/pi,20*log10(abs(H)));%parameters are respectively the normalized frequency and amplitude
xlabel('the normailzed frequency');ylabel('gian/dB');title('The gain response of lowpass filter');
axis([0 1 -50 0.5]);
f1=100;f2=300;f3=700;fs=2000;%the frequencies of sines signal that needs filtered and the sample frequency
figure(2)
38
subplot(211)
t=0:1/fs:0.25;%define the time domain and steplength
s=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);%signal before filtering
plot(t,s);%plot the diagram before filtering
xlabel('time/s');ylabel('amplitude');title('Time-domain diagram before filtering');
subplot(212)
Fs=fft(s,512); AFs=abs(Fs);%transform to the frequency domain
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
Fsf=fft(sf,512); AFsf=abs(Fsf);%frequency-domain and the amplitude diagram
f=(0:255)*fs/512;%frequency sampling
plot(f,AFsf(1:256))%plot the frequency domain diagram before filtering
xlabel('frequency/Hz');ylabel('amplitude');title('Frequency-domain diagram after filtering');