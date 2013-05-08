function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% for i=1:m
%     h(i) = theta(1)+theta(2)*X(i,2)+theta(3)*X(i,3);
% end

h = X*theta;

tmp = sum((h-y).^2);

J =1/2/m*tmp;

% =========================================================================

end
