%hw2pT715
k=50;
u=sign(randn(k,1));
c=[1;0.7; -0.03];
h=[0.9, -0.5, 0.5, -0.4, 0.3, -0.3, 0.2, -0.1];

y=conv(c,u);
subplot(2,1,1);
stem(y);
title('y');
z=conv(h,y);
subplot(2,1,2);
stem(z);
title('z');