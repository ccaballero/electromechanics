% polarizacion por divisor de voltaje (2N3819 canal n)
Vdd = 9;            % [V]
Idss = 15.8e-3;     % [A]
Vgso = -1.037;      % [V]

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
printf('\tR1[Ω]\tR2[Ω]\tRd[Ω]\tRs[Ω]\t->\t\t\t\t\tVg[V]\tId[mA]\t\tVds[V]\t\tP1[mW]\tP2[mW]\tPd[mW]\tPs[mW]\n');

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

                QVg = roots([
                    Idss/(Vgso^2),
                    (1/Rs) - (2*(Idss/Vgso)),
                    Idss-Id
                ]);
                QId = (-1/Rs) * (QVg(2) - Vg);

                P1 = ((Vdd - QVg(2))^2) / R1;
                P2 = (QVg(2)^2) / R2;
                Pd = QId^2 * Rd;
                Ps = QId^2 * Rs;

                Vds = Vdd - (QId * (Rd + Rs));

                if(
                    (abs(Vgso - (2 * QVg(2))) < 0.4)&&         % Vg -> Vgs0/2
                    (abs(Idss - (2 * QId)) < 0.00075)&&     % Id -> Idss/2
                    (abs((Vdd / 2) - Vds) < 0.5)&&          % 4.0 < Vds < 5.0[V]
                    (0.001<P1)&&(P1<0.2)&&                  % 0.001 < P1 < 0.2
                    (0.001<P2)&&(P2<0.2)&&                  % 0.001 < P2 < 0.2
                    (0.001<Pd)&&(Pd<0.2)&&                  % 0.001 < Pd < 0.2
                    (0.001<Ps)&&(Ps<0.2)                    % 0.001 < Ps < 0.2
                )
                    printf(
                        '%d\t%d\t%d\t%d\t%d\t->\t(%.2f, 0)\t(0, %.3f)\t%.2f\t%.2f\t\t%.2f\t\t%.2f\t%.2f\t%.2f\t%.2f\n',
                        count,
                        R(h), R(i), R(j), R(k),
                        Vg,
                        Id * 1e3,
                        QVg(2),
                        QId * 1e3,
                        Vds,
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

