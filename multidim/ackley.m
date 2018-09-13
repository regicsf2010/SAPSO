function y = ackley(x)
    d = length(x);
            
    p1 = -20 * exp(-0.2 * sqrt(sum(x.^2) / d));
    p2 = -exp(sum(cos(2 * pi * x)) / d) + exp(1) + 20;
    y = p1 + p2;
end