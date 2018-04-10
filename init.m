function [p] = init(N, DIM, RANGE, VMAX, f)
    X = initialization(N, DIM, RANGE);
    XFIT = initFitness(X, N, f);
    V = initialization(N, DIM, [-VMAX, VMAX]);
    
    
    I = zeros(N, 1);
    C = zeros(N, 1);
    
    p = struct('X', X, ... % particles position
               'XFIT', XFIT, ... % fitness
               'V', V, ... % velocity
               'P', X, ... % best personal
               'PFIT', XFIT, ...
               'OLDXFIT', XFIT, ...
               'I', I, ...
               'C', C); 
end