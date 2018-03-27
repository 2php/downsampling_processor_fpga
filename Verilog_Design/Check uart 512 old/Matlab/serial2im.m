fpga = serial('COM3');
fpga.InputBufferSize = 10000000;
fpga.OutputBufferSize = 10000000;
fpga.BaudRate = 115200;

fclose(instrfind);
fopen(fpga);

fpga.Timeout = 60;                  % One minute timeout period
fprintf('\nEstablishing connection.....  %.2f %%',0);
for i=1:30 %wait for 15 seconds
    clc;
    fprintf('Establishing connection.....  %.2f %%',(100*i/30));
    pause(0.5);
end
fprintf('\nReady to receive..Press the button\n');
im_received = fread(fpga,262145);%65536
fclose(instrfind);

% im_array = zeros(65536,1);
 im_out = reshape(im_received(2:end)', [512,512]);
 imshow(uint8(im_out));