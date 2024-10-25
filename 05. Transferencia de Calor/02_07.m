clear
close all
clc

function [ki] = getK(ti, index, k)
    if ( (k(1, 1) < ti) && (ti < k(1, 3)) )
        if ( (k(1, 1) < ti) && (ti <= k(1, 2)) )
            ki = k(index + 1, 1) + ...
                 ((ti - k(1, 1)) / (k(1, 2) - k(1, 1))) * ...
                 (k(index + 1, 2) - k(index + 1, 1));
        endif
        if ( (k(1, 2) < ti) && (ti <= k(1, 3)) )
            ki = k(index + 1, 2) + ...
                 ((ti - k(1, 2)) / (k(1, 3) - k(1, 2))) * ...
                 (k(index + 1, 3) - k(index + 1, 2));
        endif
    else
        printf("%d fuera de rango: %d", index, ti)
    endif
endfunction

function [ri] = getR(di, ki, ai)
    ri = di / (ki * ai);
endfunction

function [qi] = getQ(ti, to, r1, r2)
    qi = (ti - to) / (r1 + r2);
endfunction

function [error] = checkQ(q, ti, tab, to, r1, r2)
    tab1 = ti - (q * r1);
    tab2 = (q * r2) + to;

    error = (abs(tab1 - tab) / tab) * 100;
endfunction

function graficar(x,y)
    hold on
    grid on

    plot(x,y,'o')

    hold off
endfunction


ti = 800
to = 100

da = 0.2
db = 0.15

k = [
    0.00, 500,  1000;
    0.70, 0.82, 1.00;
    0.74, 0.85, 1.20
]

printf("Tab\t\tError\n")

x = zeros(1,500);
y = zeros(1,500);

for (i = 0:500)
    tab = 412.894 + (i * 0.00001);

    ta = (ti + tab) / 2;
    ka = getK(ta, 1, k);
    ra = getR(da, ka, 1);

    tb = (tab + to) / 2;
    kb = getK(tb, 2, k);
    rb = getR(db, kb, 1);

    q = getQ(ti, to, ra, rb);
    error = checkQ(q, ti, tab, to, ra, rb);

    x(i + 1) = tab;
    y(i + 1) = error;

    printf("%d\t\t%d\n", tab, error)
endfor

graficar(x,y)

% Resultado encontrado: 412.895
