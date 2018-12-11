Ts =1/44100;
t1 = 0:Ts:1-Ts;
t2 = 0:Ts:1-Ts;
t3 = 0:Ts:1-Ts;
nbits = 16;
yRange = [20, 20000];

x1 = cos(880*pi*t1 + pi/3);
x2 = 2.5*cos(1760*pi*t2);
x3 = 3*cos(1000*pi*t3 - pi/6);

subplot(3,1,1),plot(t1,x1),axis([-1 2 -1.5 1.5]),title('P1'),xlabel('t'),ylabel('x1');
subplot(3,1,2),plot(t2,x2),axis([-1 2 -3 3]),title('P2'),xlabel('t'),ylabel('x2');
subplot(3,1,3),plot(t3,x3),axis([-1 2 -3.5 3.5]),title('P3'),xlabel('t'),ylabel('x3');

f1 = 880*pi/2*pi;
f2 = 1760*pi/2*pi;
f3 = 1000*pi/2*pi;

f1
f2
f3

T1 = -(pi/3) / 2*pi*f1;
T2 = 0/2*pi*f2;
T3 = (pi/6)/2*pi*f3;

T1
T2
T3

soundsc(x1,f1);
soundsc(x2,f2);
soundsc(x3,f3);