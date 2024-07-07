function [A,sA,B,sB,R]=minimoscuadrados(x,y)
    xx = x.*x
    yy = y.*y
    xy = x.*y

    % tamano de la muestra
    n = length(x)

    % calculo de las sumatorias
    sx = sum(x)
    sy = sum(y)

    sxx = sum(xx)
    syy = sum(yy)
    sxy = sum(xy)

    D1 = (n * sxx) - (sx)^2
    D2 = (n * syy) - (sy)^2

    % calculo de los valores de la recta
    A = ( (sy * sxx) - (sxy * sx) ) / D1
    B = ( (n * sxy) - (sx * sy) ) / D1

    % calculo del error
    Y = A + (B * x)
    d = y - Y

    dd = d.*d
    sdd = sum(dd)
    s2 = sdd / ( n - 2)

    sA = sqrt( (s2 * sxx) / D1 )
    sB = sqrt( (s2 * n) / D1 )

    % calculando el error porcentual
    EA = abs(sA / A) * 100
    EB = abs(sB / B) * 100

    % calculo de correlacion
    R = ((n * sxy) - (sx * sy)) / sqrt( D1 * D2 )
end

