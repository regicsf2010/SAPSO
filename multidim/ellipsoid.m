function [ y ] = ellipsoid( x )
    i = 1 : length(x);
    y = (i .* x) * x';
end