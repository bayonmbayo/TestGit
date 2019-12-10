function[]= plot_newton_interpolation(x,y,l,r)

    b = interpolation_newton(x,y);
    xplot = ones(100,1);
    yplot = xplot;
    Len = length(x);
    for j=1:Len
        if(x(j)>=l && x(j)<=r)
            y(j)= auswertung_newton(x,b,x(j));
            scatter(x(j),y(j));
            hold on;
        end
    end
   xplot(1)=l;
    yplot(1)= auswertung_newton(x,b,xplot(1));
    for i=2:101
      xplot(i)= (l+(r-l)/100*i);
      yplot(i)= auswertung_newton(x,b,xplot(i));
    end
    plot(xplot,yplot)
end