function [P, PFIT, G] = updateBest( X, XFIT, P, PFIT, G )
    if(XFIT < PFIT)
        P = X;
        PFIT = XFIT;
        if(XFIT < G.XFIT)
            G.X = X;
            G.XFIT = XFIT;
        end
    end
end

