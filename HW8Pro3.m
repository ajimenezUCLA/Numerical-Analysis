% HW8Pro3
%part a
clear all;
[u, v] = robappr;
m = length(u); %rows for A
A = [ones(m,1), u]; %Block matrix A [1_i u]
x = A\v; %had to change variables
disp(x);
%part b
xls = x;
for i = 1:50
    z = A*xls - v;
    tot = sum(sqrt(z.^2+25));
    grad = A'*(z./sqrt(z.^2+25));
    if(norm(grad) < 1e-6)
        break;
    end;
    hess= A'*diag((25)./(z.^2+25).^(3/2))*A;
    xls = xls - hess \ grad;
end;
disp(xls);