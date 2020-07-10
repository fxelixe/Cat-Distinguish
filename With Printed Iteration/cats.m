clear all; close all; clc
pkg load image

fnameX = 'data/train';          % read training image
fnameY = 'data/cat_train.csv';   % file label
numtrain = 209;
[X, Y] = file2vec(fnameX, fnameY, numtrain);   
CHECK01 = size(X)                             % ***CHECK01: [12288 209]
CHECK02 = X(100:101,100:101)                  % ***CHECK02: [110 61; 111 97]
CHECK03 = Y(100:104, :)                       % ***CHECK03: [0; 0; 0; 1; 0]

X = double(X)/255;             % ubah agar nilai antara 0 sampai 1
X = [ones(1, numtrain); X];
CHECK04 = size(X)                             % ***CHECK04: [12289 209] 
CHECK05 = sigmoid([0 2])                      % ***CHECK05: [0.50000 0.88080]

w = init_with_zero(size(X),1);
[grad,cost] = prop(w,X,Y);
iter = 10000;
rate = 0.001;
[w,grad,cost] = optimize(w,X,Y,iter,rate);     % print cost tiap 100 iterasi
Y_pred = predict(w,X);


# T E S T ----------------------------------------------------------------------
fnameX_tes = 'data/test';          % read test image
fnameY_tes = 'data/cat_test.csv';   % file label
numtes = 50;
[X_tes, Y_tes] = file2vec(fnameX_tes, fnameY_tes, numtes);
X_tes = [ones(1,numtes); X_tes];
X_tes=double(X_tes);   
Y_pred_tes = predict(w,X_tes);


# model ------------------------------------------------------------------------
final = model(X, Y, X_tes, Y_tes, iter = 10000, rate = 0.001)

# tes gambar--------------------------------------------------------------------
nama_gambar = 'coba0010.jpg';
haha = tebakgambarpakj(nama_gambar,w);   