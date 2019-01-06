%Homework 3, problem T8.8
A = [1 1 1 -2 -2; ...
    1 2 4 -10 -20; ...
    1 3 9 -27 -81; ...
    1 4 16 4 16; ...
    1 5 25 20 100];
B = [2 5 9 -1 -4]';
x = A \ B;
% disp(x);

syms t;

y = (0.6296 + 0.6049*t + -0.1975*t.^2) ...
    /(1 -0.5679*t +0.0864*t.^2);
ezplot(y,[0,6]);
title('f(t)');
grid on;