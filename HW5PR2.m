% Homework 5, Problem 2 
[t,n] = mooreslaw;
A = [t,n];
B = A(:,2);
C = log10(B);
D = [ones(13,1), A(:,1)-1970];
x = D\C;
disp(x);
E = rms(D*x-C);
disp(E);

t1 = 1971;
t2 = 2005;
theta1 = x(1,1);
theta2 = x(2,1);
semilogy(t,n, 'o');
hold on;
semilogy([t1;t2], ...
[ 10^(theta1 + theta2*(t1-1970)); ...
    10^(theta1 + theta2*(t2-1970))], '-');

