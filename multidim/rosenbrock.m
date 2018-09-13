function [ y ] = rosenbrock( x )
    a = 1; b = 100;
    xplus1 = x(2:end);
    xminus1 = x(1:end-1);
    xminus1s = xminus1.^2;
    
    xaux1 = (xplus1 - xminus1s);
    xaux2 = a - xminus1;
    y = (b * xaux1) * xaux1' + xaux2 * xaux2';
end