function y = levi( x )

d = length(x);
w = 1 + (x - 1) / 4;

term1 = (sin(pi * w(1)))^2;
term2 = sum((w(1:d-1) - 1).^2 .* (1 + 10 * sin(pi .* w(1:d-1) + 1).^2));
term3 = (w(d) - 1)^2 * (1 + (sin(2 * pi * w(d)))^2);
y = term1 + term2 + term3;
end