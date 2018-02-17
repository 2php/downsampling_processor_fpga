function cache = downCache2(cache, factor, en)
    
    if(en==0)                                           % Enable division
        factor = 1;
    end

    halfCacheSize = size(cache,2)/2;                    % = 128 in the processor
    for i = 1: halfCacheSize                            % Select two
        address = (i-1)*2 +1;
        cache(i) = addDiv(cache(address),cache(address+1), factor);
    end
end

