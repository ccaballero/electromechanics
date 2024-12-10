% polarizacion por divisor de voltaje
% 2N2222A NPN

Vs = 0.10;          % 0.1 [V]

Vdd = 9;            % [V]
Idss = 15.8e-3;     % [A]
Vgso = -1.037;      % [V]

R1 = 1000;          %   1 [kΩ]
R2 = 100;           % 100 [Ω]
Rd = 470;           % 470 [Ω]
Rs = 150;           % 150 [Ω]

printf('R1=%d R2=%d Rd=%d Rs=%d\n', R1, R2, Rd, Rs);

Ri = 350;                   % 350 [Ω]   // resistencia interna
Rl = 100;                   % 100 [Ω]   // resistencia de carga

QVg = -0.209;       % -0.209 [V]
QId = 7.0e-3;       % 7 [mA]

gm0 = (2 * Idss) / (abs(Vgso))
gm = gm0 * (1 - (QVg/Vgso))

Av = gm * Rd

Rent = 1 / ((1 / R1) + (1 / R2) + (1 / (QVg/QId)))

printf('Vs=%.2f Vc=%.2f', Vs, gm * ((Rd*Rl)/(Rd+Rl)) * Vs)

