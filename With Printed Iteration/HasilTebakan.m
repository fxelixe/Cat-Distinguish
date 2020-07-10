for i = 1:50
    % Display 
    fprintf('\nDisplaying Example Image\n');
    ff = [fnameX_tes, num2str(i, '%03d'), '.jpg'];
    img = imread(ff);

    label = Y_pred_tes(i)
    if label == 1
      fprintf('y = %d. Komputer menebak ini gambar kucing.\n', label);
      judul = 'y = 1, Komputer menebak bahwa ini gambar kucing.'
    else
      fprintf('y = %d. Komputer menebak ini bukan gambar kucing.\n', label);
      judul = 'y = 0, Komputer menebak bahwa ini bukan gambar kucing.'
    end
    image(img)
    title(judul)
 
    pause(1);
end