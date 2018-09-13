function y = alpine( x )
    y = sum(abs(x .* sin(x) + 0.1 * x));
end