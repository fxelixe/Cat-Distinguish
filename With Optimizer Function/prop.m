function [J,grad] = prop(theta, X, y,rate = 0)

m = length(y);

J = 0;
grad = zeros(size(theta));

H = sigmoid(X'*theta);
T = y.*log(H) + (1 - y).*log(1 - H);
J = -1/m*sum(T) + rate/(2*m)*sum(theta(2:end).^2);

for i = 1 : m,
	grad = grad + (H(i) - y(i)) * X(:,i);
end
ta = [0;theta(2:end)];
grad = 1/m*grad + rate/m*ta;
end