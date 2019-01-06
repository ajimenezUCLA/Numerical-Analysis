% Homework 8, Problem 2
clear all;
syms x;
E = 15;
R = 3;
%f = x - (x^3 - 6*x^2 + 10*x - (E-x)/R)/(3*x^2 - 12*x + 10 + 1/R);
g = x^3 - 6*x^2 +10*x;
%fo = g -(E-x)/R;
%xhat = x - (x^3-6*x^2+10*x + x/R - E/R)/(3*x^2 - 12*x +10 +1/R);
go = (E-x)/R;
ezplot(g);
hold on;
ezplot(go);