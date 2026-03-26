function dydx = odefun(x, y)
    dydx = zeros(2,1);
    dydx(1) = y(2);  % y'
    dydx(2) = (1/5) * sqrt(1 + y(2)^2) / (1 - x);  % y''
end
