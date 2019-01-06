%Homework 6, Problem 2 (A9.4)

clear all;
load('deblur.mat');

lambda = 10^(4);
[m,n] = size(Y);
E = zeros(m,m);
E(1,1) = 1;
E(m,1) = -1;
Afourier = fft2(B);
dQ = abs(fft2(E)).^2 + abs(fft2(E')).^2;
dW = abs(Afourier).^2 + lambda * dQ ;
dE = conj(Afourier).* fft2(Y) ./ dW;
X = real(ifft2(dE));
imshow(X);
title(['lambda: ' num2str(lambda) ]);

