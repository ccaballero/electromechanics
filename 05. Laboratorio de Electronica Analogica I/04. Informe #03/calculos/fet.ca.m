% analisis en ca (2N3819 canal n)

Vs = 0.10;          % 0.1 [V]

Idss = 15.8e-3;     % [A]
Vgso = -1.037;      % [V]

R1 = 1000;          %   1 [kΩ]
R2 = 100;           % 100 [Ω]
Rd = 470;           % 470 [Ω]
Rs = 150;           % 150 [Ω]

printf('R1=%d R2=%d Rd=%d Rs=%d\n', R1, R2, Rd, Rs);

Ri = 350;                   % 350 [Ω]   // resistencia interna
Rl = 470;                   % 470 [Ω]   // resistencia de carga

QVg = -0.209;       % -0.209 [V]
QId = 7.0e-3;       % 7 [mA]

gm0 = (2 * Idss) / (abs(Vgso))
gm = gm0 * (1 - (QVg/Vgso))

Rent = (R1 * R2)/(R1 + R2)
Rsal = Rd
Av = gm * (1 / ((1 / Rd) + (1 / Rl)))

printf('Vs=%.2f Vc=%.2f', Vs, Av * Vs)

