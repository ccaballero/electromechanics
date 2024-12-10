% polarizacion por divisor de voltaje (2N2222A NPN)
Vcc = 9;            % [V]
Vbe = 0.675;        % [V]
B = 302;

% resistencias disponibles
R = [
    1 ...
    10            22             47 ...
    100 150 200   220 270 330    470   510    680 ...
    1000    2000  2200    3300   4700  5100   6800 ...
    10000   20000                47000 51000  68000 ...
    100000        220000  330000       510000 ...
    1000000
];

count = 1;
for (h = 1:length(R))
    for (i = 1:length(R))
        for (j = 1:length(R))
            for (k = 1:length(R))
                R1 = R(h);
                R2 = R(i);
                Rc = R(j);
                Re = R(k);

                Rth = (R1 * R2) / (R1 + R2);
                Vth = ( R2 / (R1 + R2)) * Vcc;

                Ib = (Vth - Vbe) / (Rth + ( (B + 1) * Re) );
                Ic = B * Ib;

                printf(
                    '%d,%d,%d,%d,%d,%.24f,%.24f\n',
                    count,
                    R(h), R(i), R(j), R(k),
                    Ib,
                    Ic
                );

                count++;
            endfor
        endfor
    endfor
endfor

