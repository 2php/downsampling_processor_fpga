function array256 = getRowCol( array65, num, isCol )

array256 = zeros(256,1);

for i = 0:255
    add = i;
    shifted8 = bitshift(num,8);
    
    array256(ati(i)) = array65(ati(i));
end

end

