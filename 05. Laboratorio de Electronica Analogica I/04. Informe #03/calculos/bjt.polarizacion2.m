% leer datos previamente formateados
csv = csvread('bjt.polarizacion1.out');

Vcc = 9;            % [V]
B = 302;

count = 1;
printf('\tR1[Ω]\tR2[Ω]\tRc[Ω]\tRe[Ω]\t->\tVce[V]\tVe[V]\tIb[µA]\tIc[mA]\tP1[mW]\tP2[mW]\tPc[mW]\tPe[mW]\n');

for row = 1:rows(csv)
    R1 = csv(row, 2);
    R2 = csv(row, 3);
    Rc = csv(row, 4);
    Re = csv(row, 5);

    Ib = csv(row, 6);
    Ic = csv(row, 7);
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
            R1, R2, Rc, Re,
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

