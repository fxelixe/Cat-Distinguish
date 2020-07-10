c = randperm(numtrain);
rp = c(1:25);
for i = 1:25
    % Display 
    fprintf('\nDisplaying Example Image\n');
    ff = [fnameX, num2str(rp(i), '%03d'), '.jpg'];
    img = imread(ff);

    label = Y(rp(i))
    if label == 1
      fprintf('y = %d. Ini gambar kucing.\n', label);
      judul = 'y = 1, Ini gambar kucing.'
    else
      fprintf('y = %d. Ini bukan gambar kucing.\n', label);
      judul = 'y = 0, Ini bukan gambar kucing.'
    end
    image(img)
    title(judul)
 
    pause(1);
end
