n = 16; % degree of polynomial is n-1
K = 400 % set range
t = linspace(-1, 1,n)'; % n vector
y = 1 ./ (1+ 25*t.^2); % n vector
A = fliplr(vander(t)); % we want the ones on the left side

x = A \ y; % solves Ax=b, returns coefficients of polynomial

tp = linspace(-1,1,K)'; % for precision
yf = 1 ./ (1+25*tp.^2);

intpol = x(1)*ones(K,1);
for i=1:n-1 % n-1 is the degree of the polynomial
    intpol = intpol + x(i+1)*tp.^i;
end;


plot(tp,intpol,'-',tp ,yf ,'-.', t,y ,'o');
title('n = 16');
grid on;