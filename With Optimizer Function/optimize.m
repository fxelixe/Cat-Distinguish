function [theta, grad,cost] = optimize(w,X,Y,iter,rate)

options = optimset('GradObj', 'on', 'MaxIter', iter);

[theta, grad, cost] = ...
	fminunc(@(t)(prop(t, X, Y, rate)), w, options);
end