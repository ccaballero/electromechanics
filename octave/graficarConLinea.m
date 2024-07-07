function graficarConLinea(t,_x,_y,eps,x,y,A,B)
    f = figure()

    title(t)
    xlabel(_x)
    ylabel(_y)

    hold on
    grid on
    plot(x, y, 'o')

    plot(x,A+(B*x));

    print(f,eps,'-color')
    hold off
end

