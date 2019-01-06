% discussion week 2

% load in data
load mnist_train;
digits = digits(:, 1:10000);

%define parameters
K = 20; % number of representatives (hyper parameter)
[M, N] = size(digits);

% initialize
Z = zeros(M,K);
label = randi(K, 1, N);

%algorithm 
for iter = 1:100
    %find representative
    % calculate representatives
    for k = 1:K % for each class
        I= find(label == k);
        Z(:,k) = mean(digits(:, I), 2);
    end
    % update labels
    for k = 1:K
        for n = 1:N
            D(k,n) = sum((digits(:,k) - Z(:,n)).^2);
        end
    end
    [d, label] = min(D);
    %{
    %% Example
    D = [1 2 3; 3 5 6];
    [smallest_num; index] = min(D,[],1); 1 for rows, 2 for columns
    
    %} 
    [d, label] = min(D);
    J = (1/N) * sum(d);
    
    if iter > 1 && abs(J - Jprev) < 0.005
        break;
    end
    Jprev = J;
end

for k=1:K
    subplot(4,5,k);
    imshow(reshape(Z(: