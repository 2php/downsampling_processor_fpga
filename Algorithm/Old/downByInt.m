%function im_out = downByInt( im, factor )
im = imread('sample.jpg');
im = uint8(im);
im = rgb2gray(im);
factor = 5;  


h_in = size(im, 1);
h_out = floor(h_in/factor);

factor2 = 2^nextpow2(factor);               %Next highest 2's multiple eg: 3->4, 5->8

%Upsampling

h_temp = factor2 * h_in;
im_temp = zeros(h_temp, h_temp);

for i = 1:h_temp                 %Iterate over rows
        i_out = i*factor2-1;
        if(i_out+factor2-1 > h_in)
            continue;
        end

        for j = 1:h_temp             %Iterate over cols
            j_out = j*factor2-1;
            if(j_out+factor2-1 > h_in)
                continue;
            end

            matWindow = im(i_out:i_out+factor2-1, j_out:j_out+factor2-1);
            resultMatWindow = sum(sum(matWindow));
            resultMatWindow = floor(resultMatWindow/(factor*factor));

            im_temp(i,j) = resultMatWindow;
        end

end

    


%end

