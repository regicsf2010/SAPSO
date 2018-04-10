function [ fit ] = initFitness( X, N, f )
    fit = zeros(1, N);
    for i = 1 : N
        fit(i) = f(X(i, :));
    end
end

