function cache = downCacheInt( cache, factor )
    n = 2^nextpow2(3);
    times_to_downsample = nthroot(size(cache,2)/n, 2);
    cache = disperse(cache,factor);

    for i = 1:times_to_downsample
        if(i == 1)
            cache = downCache2(cache,factor, 1);
        else
            cache = downCache2(cache,factor, 0);
        end
    end
end

