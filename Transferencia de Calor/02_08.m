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

function [qi] = getQ(ti, to, r1, r2, r3)
    qi = (ti - to) / (r1 + r2 + r3);
endfunction

function [err1, err2] = checkQ(q, ti, tab, tbc, to, r1, r2, r3)
    tab1 = ti - (q * r1);
    tbc2 = (q * r3) + to;

    err1 = (abs(tab1 - tab) / tab) * 100;
    err2 = (abs(tbc2 - tbc) / tbc) * 100;
endfunction


ti = 800
to = 100

da = 0.20
db = 0.07
dc = 0.15

k = [
    0.00, 500,  1000;
    0.70, 0.82, 1.00;
    0.0208, 0.0394, 0.0394;
    0.74, 0.95, 1.20
]

printf("Tab\t\tErr1\t\t\tTbc\tErr2\n" )

for (j = 0:10)
    for (i = 0:10)
        tab = 733.0 + (i * 0.001);
        tbc = 158.0 + (j * 0.001);

        ta = (ti + tab) / 2;
        ka = getK(ta, 1, k);
        ra = getR(da, ka, 1);

        tb = (tab + tbc) / 2;
        kb = getK(tb, 2, k);
        rb = getR(db, kb, 1);

        tc = (tbc + to) / 2;
        kc = getK(tc, 3, k);
        rc = getR(dc, kc, 1);

        q = getQ(ti, to, ra, rb, rc);
        [err1,err2] = checkQ(q, ti, tab, tbc, to, ra, rb, rc);

        printf("%d\t\t%d\t\t\t%d\t%d\n", tab, err1, tbc, err2)
    endfor

    printf("\n")
endfor

% Resultado encontrado:  Tab = 733; Tbc = 158
