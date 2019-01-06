%Homework 7, Problem 4

load mnist;
lambda = 1;

[N, n] = size(Xtrain);
Y = -ones(N,10);
for j = 1:10
    I = find(labels_train == j-1);
    Y(I,j) = 1;
end;
W = ((1+Xtrain*Xtrain').^3 +lambda*eye(N) \ Y;

z = 

% calculating the prodiction f(z)
[val, prediction] = max(((1+z'*Xtrain').^3)*W);

[val, prediction] max((( 1+Xtrain*Xtrain').^3)*W,[],2);

I = find(prediction -1 ~= labels_train);

[val,prediction] = max(((1+Xtest*Xtrain').^3)*W,[],2);
