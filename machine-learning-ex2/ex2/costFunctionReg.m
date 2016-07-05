function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
%J = 0;
%grad = zeros(size(theta));


H = sigmoid(X * theta);


R = sum(lambda * (theta(2:length(theta)) .^ 2)) / (2 * m);

J = sum(-y .* log(H) - ((1 - y) .* log(1 - H))) / m + R;


RG = (lambda / m) .* theta;
RG(1) = 0;

grad = ((H .- y)' * X ./ m)' + RG;



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
