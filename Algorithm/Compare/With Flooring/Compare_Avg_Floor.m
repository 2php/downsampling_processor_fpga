im = imread('sample.jpg');
im = uint8(im);
%im = rgb2gray(im);

%Matlab's version
im_out_matlab = imresize(im, 0.5);


im_out_avg_floor = uint8(zeros(128,128));

for row_i = 1:2: 256
    for col_i = 1 :2: 256
        
        mat1 = bitshift([im(row_i,col_i) im(row_i + 1, col_i)],-2);
        mat2 = bitshift([im(row_i , col_i+1)  im(row_i +1, col_i+1)],-2);
                
        tot = uint8(sum(mat1) + sum(mat2));
        
        row_o = (row_i + 1)/2;
        col_o = (col_i + 1)/2;
        
        im_out_avg_floor(row_o, col_o) = tot;
    end
end

imshow(im_out_avg_floor);


im_error = im_out_matlab - im_out_avg_floor;
error_perc = 100*sqrt(sum(sum((im_error).^2)))/(128*128)