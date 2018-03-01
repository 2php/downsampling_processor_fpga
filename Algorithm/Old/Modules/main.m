factor = 2;
h = 2;
n = 2^nextpow2(3);

im = rgb2gray(imread('sample.jpg'));

%cache = uint8([1 2 3 4 5 6 7 8 9 10 11 12 0 0 0 0]);
cache = im(1,:);
cache2 = downCacheInt(cache, factor)

im = uint8([
    [ 248, 169 ]
    [ 95 , 15 ] 
    ]);




