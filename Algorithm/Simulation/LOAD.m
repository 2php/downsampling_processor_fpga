if (ZT)
    MADR = bitshift(ART+1,4) + ARG+1;       % +1 since matlab counts from 1
else
    MADR = bitshift(ARG+1,4) + ART+1;
end

MDDR = dMEM(1, MADR);         