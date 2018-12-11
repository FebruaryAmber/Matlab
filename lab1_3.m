B=xlsread('JBHifi.xlsx');
for k=1:261
close(k,1)=B(k,4);
end
%interval=datenum(2013,7,1,0,0,0); 
%plot(interval,Temp,'--bd', 'LineWidth',2,'MarkerFaceColor','r');

plot(close);
title('xlsx');
xlabel('k');
ylabel('close');