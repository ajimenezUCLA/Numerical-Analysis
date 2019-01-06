%Homework 7, Problem 5
clear all;
[t,y] = logistic_gn;
m = length(t);

xls = [ t, ones(m,1)] \ log(y ./ (1-y));
ts = linspace(-2.1, 4.1, 1000);

x = xls;
%x = zeros(2,1);

for k = 1:100
	u = x(1)*t + x(2);
	f = exp(u) ./ (1+ exp(u) ) - y;
	A = diag(exp(u) ./ (1+exp(u)).^2) * [t, ones(m,1)];
	disp(['g = ', num2str(norm(f)^2), '. grad= ', num2str(norm(2*A'*f)) ]);
	if (norm(2*A'*f) < 1e-6)
        break;
    end;
	x = x - A \ f;
end;

ygn = exp(x(1)*ts+x(2)) ./ (1+ exp(x(1)*ts + x(2)));
yls  = exp(xls(1)*ts + xls(2)) ./ (1+ exp(xls(1)*ts + xls(2)));
plot(t,y,'o',ts, ygn, 'b-', ts, yls, 'r-');
axis([-1,4,0,1]);