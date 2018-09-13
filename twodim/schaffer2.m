function [ y ] = schaffer2( x )
    y = 0.5 + (sin(x(1)^2 - x(2)^2)^2 - 0.5) / (1 + 0.001 * (x(1)^2 + x(2)^2))^2;
end

