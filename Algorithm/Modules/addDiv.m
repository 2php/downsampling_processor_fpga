
function acc = addDiv( x_i , x_i_1 , factor )
    acc = x_i + x_i_1;              %16 bit adder
    acc = uint16(acc / factor);     %16 bit divider
end

