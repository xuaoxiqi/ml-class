function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X*theta);

tmp1 = 0;
for i=1:m
    tmp1 = tmp1+( -y(i)*log(h(i))-(1-y(i))*log(1-h(i)) );
end

tmp2 = 0;
for j=2:size(X,2)
    tmp2 = tmp2+theta(j)*theta(j);
end

J = tmp1/m+tmp2*lambda/2/m;


for j=1:size(X,2)
tmp(j) = 0;
    for i=1:m
        tmp(j) = tmp(j)+(h(i)-y(i))*X(i,j);
    end
end

grad(1) = tmp(1)/m;
for j=2:size(X,2)
    grad(j) = tmp(j)/m+lambda/m*theta(j);
end


% =============================================================

end
