im = imread('sample.bmp');

if(size(im,3) == 3)
    im = rgb2gray(im);
end

im_array = im(:);



fpga = serial('COM7');
fpga.InputBufferSize = 50000;
fpga.BaudRate = 115200;
fopen(fpga);

fprintf(fpga,'%i',im_array);

fclose(fpga);