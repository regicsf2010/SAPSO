function [ y ] = griewank( x )
    i = 1 : length(x);
    y = 1 + 1 / 4000 * (x * x') - prod(cos(x ./ sqrt(i)));
end