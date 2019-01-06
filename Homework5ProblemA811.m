% Homework #5, Problem A8.11
clear all;
k = 8;

A = [1 1; 10^(-k) 0; 0 10^(-k)];
b = [-10^(-k); 1+10^(-k); 1-10^(-k)];

format long;
x = (A'*A) \ (A'*b);

disp('the value of k is: ');disp(k);
disp('corresponding values of x: ');
disp(x);

