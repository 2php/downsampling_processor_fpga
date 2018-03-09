if (ZT)
    MADR = bitshift(AWT+1,4) + AWG+1;       % +1 since matlab counts from 1
else
    MADR = bitshift(AWG+1,4) + AWT+1;
end

dMEM(1, MADR) = MDDR;         