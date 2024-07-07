function graficar(t,_x,_y,eps,x,y)
    f = figure()

    title(t)
    xlabel(_x)
    ylabel(_y)

    hold on
    grid on
    plot(x, y, 'o')

    print(f,eps,'-color')
    hold off
end

