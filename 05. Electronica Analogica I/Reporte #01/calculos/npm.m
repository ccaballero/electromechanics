
% polarizacion por divisor de voltaje

Vcc = 9;            % [V]
Vce = Vcc / 2;      % [V]
Ve = 0.1 * Vcc;     % [V]

Vbe = 0.672;         % [V]
B = 267;

% resistencias disponibles
R = [
    1 ...
    10 22 47 ...
    100 150 200 220 270 330 470 510 680 ...
    1000 2000 2200 3300 4700 5100 6800 ...
    10000 20000 47000 51000 68000 ...
    100000 220000 330000 510000 ...
    1000000
];

count = 1;
printf('\tR1[Ω]\tR2[Ω]\tRC[Ω]\tRE[Ω]\t->\tVce[V]\tVe[V]\tIb[µA]\tIc[mA]\tPC[mW]\tPE[mW]\n');

for (h = 1:length(R))
    for (i = 1:length(R))
        for (j = 1:length(R))
            for (k = 1:length(R))
                R1 = R(h);
                R2 = R(i);
                RC = R(j);
                RE = R(k);

                % metodo exacto
                Rth = (R1 * R2) / (R1 + R2);
                Vth = ( R2 / (R1 + R2) ) * Vcc;

                Ib = (Vth - Vbe) / (Rth + ((B + 1) * RE));
                Ic = B * Ib;
                Ie = (B + 1) * Ib;

                _Vce = Vcc - (Ic * (RC + RE));
                _Ve = Ie * RE;

                if(
                    (abs(_Vce - Vce) < 0.2)&&  % 4.3 < Vce < 4.7[V]
                    (abs(_Ve - Ve) < 0.1)&&    % 0.8 < Ve < 1.0[V]
                    (Ic < 300e-3)&&            % Ic < 300[mA]
                    (Ib > 80e-6)               % Ib > 80[µA]
                )
                    printf(
                        "%d\t%d\t%d\t%d\t%d\t->\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\n",
                        count,
                        R(h), R(i), R(j), R(k),
                        _Vce,
                        _Ve,
                        Ib * 1e6,
                        Ic * 1e3,
                        Ic^2 * RC * 1e3,
                        _Ve * Ie * 1e3
                    );

                    count++;
                endif
            endfor
        endfor
    endfor
endfor

