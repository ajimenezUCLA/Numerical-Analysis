%Homework 6, Problem 4

clear all;
splinefit;
m = 50;
n = 4;
y1 = y(1:m);
y2 = y(m+1:2*m);
t1 = t(1:m);
t2 = t(m+1:2*m);
A1 = fliplr(vander(t1)); 
A1 = A1(:, 1:n);
A2 = fliplr(vander(t2)); 
A2 = A2(:, 1:n);

A = [ A1, zeros(m,n); zeros(m,n) , A2];
b = [y1; y2];
c = [1, zeros(1, n-1), -1, zeros(1, n-1);
    0, 1, zeros(1, n-2), 0, -1, zeros(1,n-2)];
d = zeros(2,1);
x = [A'*A, c'; c, zeros(2,2)] \ [A'*b; d];
pyC1 = x(1:n);
pyC2 = x(n+1:2*n);

disp(pyC1);disp(pyC2);



