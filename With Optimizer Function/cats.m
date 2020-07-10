clear all; close all; clc
pkg load image

# T R A I N --------------------------------------------------------------------
fnameX = 'data/train';
fnameY = 'data/cat_train.csv';
numtrain = 209;
[X, Y] = file2vec(fnameX, fnameY, numtrain);   

CHECK01 = size(X)
CHECK02 = X(100:101,100:101)
CHECK03 = Y(100:104, :)

X = double(X)/255;
X = [ones(1,numtrain); X];
CHECK04 = size(X)
CHECK05 = sigmoid([0 2])

w = init_with_zero(size(X),1);
[grad,cost] = prop(w,X,Y);
iter = 400;
rate = 0.5;

#optimize nya nunggu agak lama, tapi percayalah hasilnya akan relatif memuaskan.
[w,cost,grad] = optimize(w,X,Y,iter,rate);

Y_pred = predict(w,X);
% PRINT akurasi train

fprintf('Akurasi Train: %f\n', mean(double(Y_pred == Y)) * 100);


# T E S T ----------------------------------------------------------------------
fnameX_tes = 'data/test';          % read test image
fnameY_tes = 'data/cat_test.csv';   % file label
numtes = 50;
[X_tes, Y_tes] = file2vec(fnameX_tes, fnameY_tes, numtes);
X_tes = [ones(1,numtes); X_tes];
X_tes=double(X_tes);   
Y_pred_tes = predict(w,X_tes);

% PRINT akurasi test
fprintf('Akurasi Test: %f\n', mean(double(Y_pred == Y)) * 100);

# tes gambar--------------------------------------------------------------------
nama_gambar = 'coba0010.jpg';
haha = tebakgambarpakj(nama_gambar,w);
