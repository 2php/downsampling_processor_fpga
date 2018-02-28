
function im_out = avgAround(im, im_out, h_in, h_out, factor )
    for i = 1:h_out                 %Iterate over rows
        i_out = i*factor-1;
        if(i_out+factor-1 > h_in)
            continue;
        end

        for j = 1:h_out             %Iterate over cols
            j_out = j*factor-1;
            if(j_out+factor-1 > h_in)
                continue;
            end

            matWindow = im(i_out:i_out+factor-1, j_out:j_out+factor-1);
            resultMatWindow = sum(sum(matWindow));
            resultMatWindow = floor(resultMatWindow/(factor*factor));

            im_out(i,j) = resultMatWindow;
        end

    end
end

