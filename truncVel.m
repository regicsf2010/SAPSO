function [ V ] = truncVel( V, VMAX )
%% Velocity
    iddown = V < -VMAX;
    idup = V > VMAX;

    V(iddown) = -VMAX;
    V(idup) = VMAX; 


end

