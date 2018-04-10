function [dir, I] = updateDir(dir, diversity, I, t, N)
    if(dir > 0 && diversity < t(1)) % must repulse
        dir = -1;
        I = ones(N, 1);
    elseif(dir < 0 && diversity > t(2)) % must attract
        dir = 1;
        I = zeros(N, 1);
    end
end