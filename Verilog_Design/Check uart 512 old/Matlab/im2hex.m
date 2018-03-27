im = imread('sample.bmp');
hex = [];

% for row = 1:size(im, 1)
%     for col = 1:size(im, 2)
%         hex = [hex, im(row,col)];
%     end
% end

im_T = im';
im1D = im_T(:);
imHex = dec2hex(im1D);

hex_file = fopen('im_output.txt', 'wt');
fprintf(hex_file, '%x\n', imHex);
disp('Successfully completed Image-> Hex conversion');
fclose(hex_file);
    