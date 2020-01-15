function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% X is the feature Matrix ie [1 2;1 3,1 4]
% y is the profit vector ie [3,4,5]
% theta is the paramter vector ie [0;0] 2x1

J = 1/(2*m) * sum(((X * theta) - y) .^ 2); %2x1    X=mx2 => mx1







% =========================================================================

end
