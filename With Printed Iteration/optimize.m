function [theta , grad , cost] = optimize(theta,X,Y,iter,rate)
costs = [];
  for i = 1:iter
    [grad,cost] = prop(theta,X,Y);
     theta = theta - (rate*grad);
    if mod(i,100) == 0
      costs = [costs;cost];
      fprintf('Cost setelah %d iterasi: %f.\n', i, cost);
    else
      costs = [costs;cost];
    end
  end
end