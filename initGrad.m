function [ G ] = initGrad( X, N, D, f )
    G = zeros(N, D);    
    for i = 1 : N
        G(i, :) = getGradient(X(i, :), f);
    end
end

