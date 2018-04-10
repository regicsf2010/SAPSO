function G = truncGrad(G, GRADMAX)

%% Gradient
    iddown = G < -GRADMAX;
    idup = G > GRADMAX;

    G(iddown) = -GRADMAX;
    G(idup) = GRADMAX; 

end