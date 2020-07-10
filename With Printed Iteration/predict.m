function Y_pred = predict(theta, X)

m = size(X, 2);

Y_pred = zeros(m, 1);

Y_pred = (sigmoid(X'*theta) >= 0.5);

end
