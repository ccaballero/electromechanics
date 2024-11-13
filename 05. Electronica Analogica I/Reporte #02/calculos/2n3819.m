% polarizacion por divisor de voltaje
Vdd = 9;            % [V]
Idss = 18.25e-3;    % [A]
Vgso = -1.129;      % [V]

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
printf('\tR1[Ω]\tR2[Ω]\tRd[Ω]\tRs[Ω]\t->\t\t\t\t\tVg[V]\tId[mA]\t\tP1[mW]\tP2[mW]\tPd[mW]\tPs[mW]\n');

for (h = 1:length(R))
    for (i = 1:length(R))
        for (j = 1:length(R))
            for (k = 1:length(R))
                R1 = R(h);
                R2 = R(i);
                Rd = R(j);
                Rs = R(k);

                Vg = (R2 / (R1 + R2)) * Vdd;    % Id = 0
                Id = Vg / Rs;                   % Vgs = 0

                _Vg = roots([
                    Idss/Vgso^2,
                    (1/Rs) - (2*(Idss/Vgso)),
                    Idss-Id
                ]);

                _Id = (1/Rs) * (Vg - _Vg(2));

                P1 = ((Vdd - Vg)^2) / R1;
                P2 = Vg^2 / R2;
                Pd = _Id^2 * Rd;
                Ps = _Id^2 * Rs;

                if(
                    (0.02<P1) && (P1<0.1) &&                     % 0.02 < P1 < 0.1
                    (0.02<P2) && (P2<0.1) &&                     % 0.02 < P2 < 0.1
                    (0.02<Pd) && (Pd<0.1) &&                     % 0.02 < Pd < 0.1
                    (0.02<Ps) && (Ps<0.1) &&                     % 0.02 < Ps < 0.1
                    (abs((0-_Vg(2)) - (_Vg(2)-Vgso)) < 0.01) &&  % Vg -> Vgs0/2
                    (abs((Idss-_Id) - (_Id-0)) < 0.01)           % Id -> Idss/2
                )
                    printf(
                        '%d\t%d\t%d\t%d\t%d\t->\t(%.2f, 0)\t(0, %.3f)\t%.2f\t%.3f\t\t%.2f\t%.2f\t%.2f\t%.2f\n',
                        count,
                        R1, R2, Rd, Rs,
                        Vg,
                        Id * 1e3,
                        _Vg(2),
                        _Id * 1e3,
                        P1 * 1e3,
                        P2 * 1e3,
                        Pd * 1e3,
                        Ps * 1e3
                    );

                    count++;
                endif
            endfor
        endfor
    endfor
endfor

