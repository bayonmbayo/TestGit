function[px0] = auswertung_newton(x,b,x0)
    r = b;
    n = length(b);
    for k = n-1:-1:1
        r(k) = r(k+1)*(x0 - x(k)) + b(k);      
    end
    px0 = r(1);
end