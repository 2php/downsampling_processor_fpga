im = imread('sample.bmp');

if(size(im,3) == 3)
    im = rgb2gray(im);
end

im_array = char(im(:));

tst_array = char([49 50 51 52 53]);



fpga = serial('COM7');
fpga.InputBufferSize = 10000000;
fpga.OutputBufferSize = 10000000;
fpga.BaudRate = 115200;

fclose(instrfind);
fopen(fpga);

fprintf(fpga,'%i',tst_array);

fclose(instrfind);