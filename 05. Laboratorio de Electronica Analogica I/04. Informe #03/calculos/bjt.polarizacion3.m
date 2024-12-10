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
printf('\tR1[Ω]\tR2[Ω]\tRc[Ω]\tRe[Ω]\t->\tVce[V]\tVe[V]\tIb[µA]\tIc[mA]\tP1[mW]\tP2[mW]\tPc[mW]\tPe[mW]\n');

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
                Ie = Ic + Ib;

                Vce = Vcc - (Ic * (Rc + Re));
                Vc = Ic * Rc;
                Ve = Ie * Re;

                if(
                    (B * Re) > (10 * R2)&&              % divisor de voltaje rigido
                    (abs((Vcc / 2) - Vce) < 0.1)&&      % 4.4 < Vce < 4.6[V]
                    (abs((0.1 * Vcc) - Ve) < 0.1)&&     % 0.8 < Ve < 1.0[V]
                    (Ic > 10e-3)                        % Ic > 10[mA]
                )
                    printf(
                        '%d\t%d\t%d\t%d\t%d\t->\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\n',
                        count,
                        R(h), R(i), R(j), R(k),
                        Vce,
                        Ve,
                        Ib * 1e6,
                        Ic * 1e3,
                        (((R1 / (R1 + R2)) * Vcc)^2 / R1) * 1e3,
                        (((R2 / (R1 + R2)) * Vcc)^2 / R2) * 1e3,
                        Ic^2 * Rc * 1e3,
                        Ve * Ie * 1e3
                    );

                    count++;
                endif
            endfor
        endfor
    endfor
endfor

