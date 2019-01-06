%homework 7, Problem 4
load mnist;
[N, n] = size(Xtrain);
% lambda = [1 10, 10^2, 10^3, 10^4, 10^5, 10^6, 10^7];
lambda = 10^5;
Y = -ones(N,10);
for j = 1:10
    I = find(labels_train == j-1);
    Y(I, j) = 1;
end;
W = ( (1 + Xtrain * Xtrain').^3 + lambda*eye(N) ) \ Y;
trainError = zeros(1,length(lambda));
testError = zeros(1,length(lambda));
for i = 1:length(lambda)
    W = ( (1 + Xtrain * Xtrain').^3 + lambda* eye(N) ) \ Y;
    [val, prediction] = max(((1+Xtrain*Xtrain') .^3)*W,[],2);
    indTrain = find(prediction - 1 ~= labels_train);
    trainError(i) = length(indTrain)*100/N;
    [val, prediction] = max(((1+Xtest*Xtrain').^3)*W, [],2);
    indTest = find(prediction -1 ~= labels_test);
    testError(i) = length(indTest)*100/N;
end;
figure;
semilogy(lambda, trainError);
hold on;
semilogy(lambda, testError);
xlabel('lambda');
ylabel('Error');
legend('Train Error', 'test Error', 'location','best');
[minval, minInd] = min(testError);
W = ((1 + Xtest*Xtrain').^3 + lambda *eye(N)) \ Y;
[val, prediction] = max(((1+Xtest*Xtrain').^3) * W, [],2);
[C, order] = confusionmat(labels_test, prediction -1);
