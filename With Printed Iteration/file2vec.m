function [X,Y] = file2vec (fnameX, fnameY, nums)     % fname: nama file tanpa index, nums: jumlah file 
  X = [];                             % X: input dengan tiap kolom berisi 1 gambar
  for i = 1:nums                              % ulangi untuk setiap file
    ff = [fnameX, num2str(i, '%03d'), '.jpg'];   % nama file lengkap
    img = imread(ff);                           % baca gambar
    [x,y,rgb] = size(img);                      % ukuran gambar 
    if x*y*rgb != 12288             % Jika foto hitam putih
      img = cat(3, img, img, img);  % Nilai RGB dibuat sama 
      [x,y,rgb] = size(img);            % train145.jpg dan train178.jpg hitam-putih
    end                                 % test024.jpg dan test031.jpg hitam-putih
    X = [ X reshape(img, x*y*rgb, 1)];  % ubah gambar jadi vektor kolom dan tambahkan ke X
  end
  Y = csvread(fnameY);
endfunction
