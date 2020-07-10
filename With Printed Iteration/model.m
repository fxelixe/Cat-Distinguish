function model(X, Y, X_tes, Y_tes, iter, rate)
 w = init_with_zero(size(X),1);
 [grad,cost] = prop(w,X,Y);
 [w,grad,cost] = optimize(w,X,Y,iter,rate);
 Y_pred = predict(w,X);
 Y_pred_tes = predict(w,X_tes);

 fprintf('Akurasi Train: %f\n', mean(double(Y_pred == Y)) * 100);
 fprintf('Akurasi Test: %f\n', mean(double(Y_pred_tes == Y_tes)) * 100);
endfunction
