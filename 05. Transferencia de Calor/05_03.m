clear
close all
clc

dimensiones = csvread('t_dimensiones.csv');

function [DI, DE] = diametroNormalizado(x, dimensiones)
    indice = 1;

    while (dimensiones(indice,1) < x)
        indice = indice + 1;
    endwhile

    DI = dimensiones(indice, 2);
    DE = dimensiones(indice, 3);
endfunction

tabla = csvread('t_agua.csv');

function [p, u, Cp, k, b, L, n, a, Pr] = interpolar(t, tabla)
    dim = size(tabla);

    for (i = 1:dim(1))
        if (tabla(i, 1) <= t)
            minI = i;
            minT = tabla(i, 1);
        endif

        if (tabla(dim(1) - i + 1) >= t)
            maxI = dim(1) - i + 1;
            maxT = tabla(dim(1) - i + 1);
        endif
    endfor

    if(minI == maxI)
        p =  tabla(minI, 2);
        u =  tabla(minI, 3);
        Cp = tabla(minI, 4);
        k =  tabla(minI, 5);
        b =  tabla(minI, 6);
        L =  tabla(minI, 7);
        n =  tabla(minI, 8);
        a =  tabla(minI, 9);
        Pr = tabla(minI, 10);

        u = u * 1e-3;
        b = b * 1e-4;
        n = n * 1e-6;
        a = a * 1e-7;
    else
        p =  tabla(minI,  2) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  2) - tabla(minI,  2)) );
        u =  tabla(minI,  3) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  3) - tabla(minI,  3)) );
        Cp = tabla(minI,  4) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  4) - tabla(minI,  4)) );
        k =  tabla(minI,  5) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  5) - tabla(minI,  5)) );
        b =  tabla(minI,  6) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  6) - tabla(minI,  6)) );
        L =  tabla(minI,  7) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  7) - tabla(minI,  7)) );
        n =  tabla(minI,  8) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  8) - tabla(minI,  8)) );
        a =  tabla(minI,  9) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI,  9) - tabla(minI,  9)) );
        Pr = tabla(minI, 10) + ( (t - tabla(minI, 1)) / (tabla(maxI, 1) - tabla(minI, 1)) * (tabla(maxI, 10) - tabla(minI, 10)) );

        u = u * 1e-3;
        b = b * 1e-4;
        n = n * 1e-6;
        a = a * 1e-7;
    endif
endfunction

DN = 2;         % [pulg]
l = 8;          % [m]
twi = 60;       % [ºC]
ti = 10;        % [ºC]
to = 40;        % [ºC]

[DI, DE] = diametroNormalizado(DN, dimensiones);

DI = DI / 1000; % [m]

_v = 0.00001;

for (x = -20:20)
    v = _v + (x * 0.00001);
    tm = 0.5 * (to + ti);

    [ip, iu, iCp, ik, ib, iL, in, ia, iPr] = interpolar(ti, tabla);
    [mp, mu, mCp, mk, mb, mL, mn, ma, mPr] = interpolar(tm, tabla);

    %printf(
    %    "%d %.10f %.10f %.10f\n",
    %    ti, DI, ip, iCp
    %);
    %printf(
    %    "%d %.10f %.10f %.10f %.10f\n",
    %    tm, mp, mu, mk, mPr
    %);

    Re = (v * mp * DI) / mu;

    At = 0.25 * pi * (DI^2);
    fm = v * ip * At * 3600;

    q1 = fm * iCp * (to - ti);

    if (Re > 2100)
        Nu = 0.023 * (Re^0.8) * (mPr^0.4);
    else
        Nu = 2.0 * ((fm * iCp) / (mk * l))^(1/3);
    endif

    h = (Nu * mk) / DI;

    %printf(
    %    "[%.5f]\t[%.5f]\t[%.5f]\n",
    %    Nu, h, fm
    %);

    A = pi * DI * l;
    q2 = h * A * (twi - tm);

    diff = q1 - q2;

    printf("[%.8f]\t\t[%.5f] -> [%.5f][%.5f]\t[%.5f]\n", v, Re, q1, q2, diff);
endfor
