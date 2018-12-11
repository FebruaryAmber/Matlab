t = 0:0.0002:3.14;
y = zeros(10,length(t));
x = zeros(size(t));
for k = 1:2:19
   x = x + sin(k*t)/k;
   y((k+1)/2,:) = x;
end
plot(y(1:2:9,:)')
title('square')