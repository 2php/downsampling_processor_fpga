b=imread('sample.bmp');

k=1;
for i=256:1
    for j=1:256
        a(k)=b(i,j);
        k=k+1;
    end
end
fid = fopen('sample.hex', 'wt');
fprintf(fid, '%x\n', a);
disp('Text file write done');disp(' ');
fclose(fid);
