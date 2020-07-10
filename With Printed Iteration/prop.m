function [grad,cost] = prop(theta, X, y)

m = length(y);

cost = 0;
grad = zeros(size(theta));

A = sigmoid(X'*theta);
cost = (-1/m)*sum(y.*log(A) + (1 - y).*log(1 - A));

grad = (1/m)*(X * (A - y));
end