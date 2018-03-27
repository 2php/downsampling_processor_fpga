clc,clear all,close all;
im_in = imread('iron-man-3.png');

if(size(im_in,3) == 3)
    im_in = rgb2gray(im_in);
end


im_array = im_in(:);
im_array = uint8(im_array);

tst_array = [49 50 51 52 53];

fpga = serial('COM3');
fpga.InputBufferSize = 10000000;
fpga.OutputBufferSize = 10000000;
fpga.BaudRate = 115200;

fclose(instrfind);
fopen(fpga);
fpga.Timeout = 60;  
fwrite(fpga,im_array);
fclose(instrfind);