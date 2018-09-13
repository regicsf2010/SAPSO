function y = levi13( x )
%% only for two variables
    y = sin(3 * pi * x(1))^2 + (x(1) - 1)^2 * (1 + sin(3 * pi * x(2))^2) + (x(2) - 1)^2 * (1 + sin(2 * pi * x(2))^2);
end