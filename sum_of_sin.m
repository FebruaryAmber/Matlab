clc;clear
k=0.5;
rho=1600;cv=725;aLf=k/(rho*cv);
day=1;L=0.4;
nx=5; nxp=nx+1; dx=L/nx;nxx=dx*(1:nxp);
td=day*24*3600;nt=60;ntp=nt+1;dt=td/nt;
%--------------------------------------------------------------------------
Tem=[4 4 4 3 3 3 3 4 5 6 7 8 9 10 10 10 10 9 8 7 7 6 5 4];
x=(1:(24*day))*3600;
f = fit(x.',Tem.','fourier2');
coeffs = coeffvalues(f);
w=coeffs(:,6);
%--------------------------------------------------------------------------
Ti=10;
t=linspace(0,td,ntp);x=linspace(0,L,nxp);
T=zeros(1,ntp);depth=0.1;
for h=1:2:5;
    Ts(h)=coeffs(:,h);
     if h>3
         a=2;
     else
         a=1;
     end
for j=1:ntp 
  time(j)= (j)*dt;
  Tx=Ti+(Ts(h)*(exp(-(sqrt(w/(2*aLf))*depth))))*(sin(a*w*time(j)-((sqrt(w/(2*aLf))*depth))));
  T(j)=Tx;
end
TM(h,:)= T;
end
plot(t/3600,TM,'linewidth',2); hold on; xlabel('time (t)'); ylabel('Surface Temperature(Ts)');grid on