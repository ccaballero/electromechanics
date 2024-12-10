% leer datos previamente formateados
csv = csvread('fet.polarizacion1.out');
Vdd = 9;            % [V]
Idss = 15.8e-3;     % [A]
Vgso = -1.037;      % [V]

count = 1;
printf('\tR1[Ω]\tR2[Ω]\tRd[Ω]\tRs[Ω]\t->\t\t\t\t\tVg[V]\tId[mA]\t\tVds[V]\t\tP1[mW]\tP2[mW]\tPd[mW]\tPs[mW]\n');

for row = 1:rows(csv)
    R1 = csv(row, 2);
    R2 = csv(row, 3);
    Rd = csv(row, 4);
    Rs = csv(row, 5);

    Vg = csv(row, 6);
    Id = csv(row, 7);
    QVg = csv(row, 8);
    QId = csv(row, 9);

    P1 = ((Vdd - QVg)^2) / R1;
    P2 = (QVg^2) / R2;
    Pd = QId^2 * Rd;
    Ps = QId^2 * Rs;

    Vds = Vdd - (QId * (Rd + Rs));

    if(
        (abs(Vgso - (2 * QVg)) < 0.4)&&         % Vg -> Vgs0/2
        (abs(Idss - (2 * QId)) < 0.00075)&&     % Id -> Idss/2
        (abs((Vdd / 2) - Vds) < 0.5)&&          % 4.0 < Vds < 5.0[V]
        (0.001<P1)&&(P1<0.2)&&                  % 0.001 < P1 < 0.2
        (0.001<P2)&&(P2<0.2)&&                  % 0.001 < P2 < 0.2
        (0.001<Pd)&&(Pd<0.2)&&                  % 0.001 < Pd < 0.2
        (0.001<Ps)&&(Ps<0.2)                    % 0.001 < Ps < 0.2
    )
        printf(
            '%d\t%d\t%d\t%d\t%d\t->\t(%.2f, 0)\t(0, %.3f)\t%.2f\t%.3f\t\t%.2f\t\t%.2f\t%.2f\t%.2f\t%.2f\n',
            count,
            R1, R2, Rd, Rs,
            Vg,
            Id * 1e3,
            QVg,
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

