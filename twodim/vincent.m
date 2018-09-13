function [ y ] = vincent( x )
%% WARNING
% function adapted for two dimensions only
    y = -.5 * (sin(10 * log(x(1))) + sin(10 * log(x(2))));
end

