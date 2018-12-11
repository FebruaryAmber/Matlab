t1=0:0.00001:0.005;
t2=0.005:0.00001:0.01;
t3=0.01:0.00001:0.015;
t4=0.015:0.00001:0.02;
t5=0.02:0.00001:0.025;
t6=0.025:0.00001:0.03;
v=5;
r=10e3;
c=10e-7;
tau = r*c;
v1=v.*exp(t1/tau);
hold on
v2=v.*exp(-t2/tau);
hold on
v3=v.*exp(t3/tau);
hold on
v4=v.*exp(-t4/tau);
hold on
v5=v.*exp(t5/tau);
hold on
v6=v.*exp(-t6/tau);
hold on
plot(t1,v1,t2,v2,t3,v3,t4,v4,t5,v5,t6,v6)
hold on