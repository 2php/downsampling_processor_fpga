im = imread('sample.jpg');
im = uint8(im);
im_out_matlab = imresize(im, 0.5);

im_out_gau_skip = uint8(zeros(128,128));

gau = [1 2 1]'*[1 2 1];

im_out_gau = imfilter(uint16(im), gau, 'replicate', 'same');
im_out_gau = bitshift(im_out_gau, -4);


for row_i = 1:2: 256
    for col_i = 1 :2: 256
        row_o = (row_i + 1)/2;
        col_o = (col_i + 1)/2;
        
        im_out_gau_skip(row_o, col_o) = im_out_gau(row_i, col_i);
    end
end

imshow(uint8(im_out_gau_skip));

im_error = im_out_matlab - im_out_gau_skip;
error_perc = 100*sqrt(sum(sum((im_error).^2)))/(128*128)