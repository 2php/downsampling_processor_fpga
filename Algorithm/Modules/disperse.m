function cache = disperse( cache, factor )
    for i = floor((factor * size(cache,2) + 1) / (factor+1)):-1  : 1       %Calc by inverting i_out
        i_out = floor(((factor+1)*i-1)/factor);


        cache(i_out) = cache(i);

        if(mod(i,3)==0)                          %Pad multiples of 3 by zero
            cache(i_out+1) = 0;
            continue;
        end
    end
end

