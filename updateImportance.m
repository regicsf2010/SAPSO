function [I, C] = updateImportance(X, I, FIT, OLDFIT, C, G, GX, CMAX, N)
    for i = 1 : N
        if(I(i) == 0) % gradient
            if( abs(FIT(i) - OLDFIT(i)) < 1e-2 || norm(G(i, :)) < 1e-2)
                C(i) = C(i) + 1;
                if(C(i) == CMAX)
                    I(i) = 1;
                    C(i) = 0;
                end
            else
                C(i) = 0;
            end
        else % global
            if(sqrt(sum((X(i, :) - GX).^2)) < 1e-5)
                I(i) = 0;
                C(i) = 0;
            end
        end
    end
    
end