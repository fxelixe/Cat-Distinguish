function haha = tebakgambarpakj(nama_gambar,theta)
k=[]
tes = imread(nama_gambar);
[a,b,c] = size(tes);
J = imresize(tes,[64 64]);
[a,b,c] = size(J);
k = [ k reshape(J, a*b*c, 1)];
k = double(k)/255;
k = [ones(1, 1); k];
k_hasil = predict(theta,k);

label = k_hasil;
if label == 1
      fprintf('y = %d. Komputer menebak ini gambar kucing.\n', label);
      judul = 'y = 1, Komputer menebak bahwa ini gambar kucing.'
    else
      fprintf('y = %d. Komputer menebak ini bukan gambar kucing.\n', label);
      judul = 'y = 0, Komputer menebak bahwa ini bukan gambar kucing.'
    end
    image(tes)
    title(judul)

endfunction
