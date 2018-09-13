function y = schaffer4( x )
    y = 0.5 + (cos(sin(abs(x(1)^2 - x(2)^2))) - 0.5) / (1 + 0.001 * (x(1)^2 + x(2)^2));
end