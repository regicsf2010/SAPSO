function [ h ] = plotspace( l, step, f )
    
    [X, Y] = meshgrid(-l : step : l, -l : step : l);
    fx = zeros(size(X));
    for i = 1 : length(X)
        for j = 1 : length(Y)
            fx(i, j) = f([X(i, j) Y(i, j)]);
        end
    end
    figure, hold on, box on, grid on;
    %h = contour(X, Y, fx, 20);
    h = mesh(X, Y, fx);
    %h = surfc(X, Y, fx);
    %colormap(lines)
    
    view(-35, 54)
    xlim([-l, l])
    ylim([-l, l])
    zlim([min(min(fx))-0.5, max(max(fx))+0.5])
end

