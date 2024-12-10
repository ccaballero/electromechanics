% calculo de las frecuencias de corte (2N3819 canal n)

Idss = 15.8e-3;     % [A]
Vgso = -1.037;      % [V]

R1 = 1000;          %   1 [kΩ]
R2 = 100;           % 100 [Ω]
Rd = 470;           % 470 [Ω]
Rs = 150;           % 150 [Ω]

Ri = 350;                   % 350 [Ω]   // resistencia interna
Rl = 470;                   % 470 [Ω]   // resistencia de carga

QVg = -0.209;       % -0.209 [V]
QId = 7.0e-3;       % 7 [mA]

gm0 = (2 * Idss) / (abs(Vgso))
gm = gm0 * (1 - (QVg/Vgso))

f2 = 1000                   % 1000 [Hz]
f1 = 0.2 * f2               %  200 [Hz]
f3 = 0.2 * f1               %  200 [Hz]

Rg = (R1 * R2) / (R1 + R2)
C1 = 1 / (2 * pi * (Ri + Rg) * f1);

C3 = 1 / (2 * pi * (Rd + Rl) * f3);

Req = (Rs * (1/gm)) / (Rs + (1/gm))
C2 = 1 / (2 * pi * Req * f2);

printf("C1 = %d [µF]\n", C1 * 1e6);
printf("C2 = %d [µF]\n", C2 * 1e6);
printf("C3 = %d [µF]\n", C3 * 1e6);

