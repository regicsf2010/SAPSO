function g = getGradient(x0, f)
    g = zeros(size(x0));
    fx0 = f(x0);
    step = 1e-5;
    
    for i = 1 : length(x0)
        xli = x0;
        xli(i) = x0(i) + step;
        g(i) = ( f(xli) - fx0 ) / step;
    end
end