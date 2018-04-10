function [ X, I, C ] = truncSpace( X, I, C, r)    
    
%% Position
    iddown = X < r(1);
    idup = X > r(2);
    
    if(any(iddown) == 1 || any(idup) == 1)
        I = 1;
        C = 0;
    end
    
    X(iddown) = r(1);
    X(idup) = r(2);
end

