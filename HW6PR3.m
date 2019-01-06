% Homework 6, Problem 3
clear all;

N = 30;
A = [1 1; 0 0.95];
B = [0;0.1];
C = zeros(2,N);
C(:,N) = B;
for t= N-1:-1:1
    C(:,t)=A*C(:,t+1);
end;
d=[10;0];
u = C'*((C*C') \ d);
s = zeros(2,N+1); s(1,1) 
for t=1:N
    s(:,t+1) = A*s(:,t)+B*u(t);
end;
for k = 1:N
    E(k)= u(k).^2;
end;
plot(E,'o');
title('E vs N');

%{
subplot(1,3,1);
plot(u,'o'); title('u(t) vs t');
ylabel('u(t)'); xlabel('t');
subplot(1,3,2);
plot(s(1,:),'o'); title('s1(t) vs t');
ylabel('s_1(t)'); xlabel('t');
subplot(1,3,3);
plot(s(2,:),'o'); title('s2(t) vs t');
ylabel('s_2(t)'); xlabel('t');
%}