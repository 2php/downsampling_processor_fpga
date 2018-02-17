function im_out = downBy2(im)

    h_in = size(im,1);
    h_out = floor(h_in/2);
    im_out = zeros(h_out,h_out);

    %Algorithm Here;
    im_out = avgAround(im, im_out, h_in, h_out, 2);
    %Algorithm Ends
end

