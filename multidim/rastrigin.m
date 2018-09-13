function [ y ] = rastrigin( x )
    a = 10;
    n = length(x);
    
    y = a * n + sum(x.^2 - a * cos(2*pi*x));
end