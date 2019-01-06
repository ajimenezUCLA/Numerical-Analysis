%{
load ('mnist_train.mat')
i = 1 % i decides which column to extract
digits = digits(:, 10000);
X = reshape(digits(:,i), 28,28);
imshow(X);
%}


load mnist_train;
digits = digits(:,1:10000);
[n, N] = size(digits);
K = 20; 
class = randi(K, 1, N);
Z = zeros(n,K);
D = zeros(K, N);
Jprev= NaN;
for iter = 1:100 
    for k = 1:K 
        I = find(class == k);
        Z(:,k) = mean(digits(:,I), 2); 
    end
    for k = 1:K 
        D(k,:) = sqrt( sum( (digits - Z(:, k*ones(1,N))).^2) );
    end;
    [d, class] = min(D);
    J = (1/N) * norm(d)^2;
    if iter > 1 
        if abs(J - Jprev) < 1e-5 * J, break; 
        end; 
        Jprev = J; 
    end; 
end; 
for k=1:K 
    subplot(4,5,k); 
    imshow(reshape(Z(:,k), 28, 28)); 
end