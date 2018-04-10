function G = getBestGlobal(p)
    [fit, i] = min(p.XFIT);
    G = struct('X', p.X(i, :), 'XFIT', fit);
end