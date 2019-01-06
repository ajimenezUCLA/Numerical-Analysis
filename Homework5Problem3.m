clear all;
[t,y] = logistic_fit;
A = [t ones(50,1)];
B = log(y./(1-y));

hold on;
plot(t,y,'o');