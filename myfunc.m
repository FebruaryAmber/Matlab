function H = myfunc(t, T)
  H = zeros(size(t));
  H(t >= T) = 1;
end