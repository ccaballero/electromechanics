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

                printf(
                    '%d,%d,%d,%d,%d,%.8f,%.24f,%.8f,%.24f\n',
                    count,
                    R(h), R(i), R(j), R(k),
                    Vg,
                    Id,
                    QVg(2),
                    QId
                );

                count++;
            endfor
        endfor
    endfor
endfor

