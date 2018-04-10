function particles = initialization(n, d, r)
%% Start particles at random between range
    rvalues = rand(n, d);
    particles = r(1) * rvalues + (1 - rvalues) * r(2);
end