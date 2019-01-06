%Homework 8, Problem 1
%f1 = c1+r*cos(alpha+t)+del*cos(alpha-t);
%f2 = c2+r*sin(alpha+t)+del*sin(alpha-t);
%{
t = (0:pi/10:2*pi);
c1=0;
c2=0;
r=0;
del=0;
al=0;

f = [c1 + r*cos(al+t(i+1))+del*cos(al-t(i+1)); ...
    c2 + r*sin(al+t(i+1))+del*sin(al-t(i+1))];
Df = [1 0 cos(al+t(i+1)) cos(al-t(i+1)) -r*sin(al+t(i+1))-del*sin(al-t(i+1)); ...
    0 1 sin(al+t(i+1)) sin(al-t(i+1)) r*cos(al+t(i+1))+del*cos(al-t(i+1))];

for i = 1:20
    
end;

lambda = 10
syms c1 c2 r del al t real;
f = [c1 + r*cos(al+t)+del*cos(al-t); ...
    c2 + r*sin(al+t)+del*sin(al-t)];
Df = jacobian(f,[c1 c2 r del al t]);

x=[c1 ;c2 ;r ;del ;al ;t]

xhat = x(i)-(Df'*Df+lambda)
%}
clear all;
c1 = 1;
c2 = 1;
r = 1;
al = 1;
del = 1;
t = linspace(0,2*pi, 10);
y = c1 + r*cos(al+t)+del*cos(al-t);
x = c2 + r*sin(al+t)+del*sin(al-t);
f = [y;x];






I couldn't get the code to work but
here is the basic idea.
populate your matri