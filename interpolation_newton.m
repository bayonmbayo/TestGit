function [b] = interpolation_newton(x,y)
    x = x';
    n = length(y);
    Y = zeros(n,n);
    Y(:,1) = y;
    b = zeros(n,1);
    for k = 1:n
       for i = 1:n-k
           dxi = x(i+k) - x(i);
           dyi = Y(i+1,k) - Y(i,k);
           Y(i,k+1) = dyi/dxi;
       end
    end
    b = Y(1,:);
end