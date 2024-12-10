% polarizacion por divisor de voltaje
% 2N2222A NPN

B = 302;                    % hfe

Vs = 0.10;                  % 0.1 [V]

R1 = 1000;                  %   1 [kΩ]
R2 = 200;                   % 200 [Ω]
Rc = 100;                   % 100 [Ω]
Re = 22;                    %  22 [Ω]

Rs = 350;                   % 350 [Ω]   // resistencia interna
Rl = 100;                   % 100 [Ω]   // resistencia de carga

Ic = 36.6e-3;               % 36.6[mA]
Ib = Ic / B;
Ie = Ic + Ib;

re = (25e-3) / Ie           % resistencia de ca en el emisor
Rentbase = B * re;
Renttotal = 1 / ((1 / R1) + (1 / R2) + (1 / Rentbase))

Routput = Rc;

f2 = 1000                   % 1000 [Hz]
f1 = 0.2 * f2               %  200 [Hz]
f3 = 0.2 * f1               %  200 [Hz]

C1 = 1 / (2 * pi * (Rs + Renttotal) * f1);
C3 = 1 / (2 * pi * (Rc + Routput) * f3);

Rumbral = 1 / ( (1/R1) + (1/R2) + (1/Rs) )
Rentemisor = re + (Rumbral / B)

C2 = 1 / (2 * pi * ( (Rentemisor * Re) / (Rentemisor + Re) ) * f2);

printf("C1 = %d [µF]\n", C1 * 1e6);
printf("C2 = %d [µF]\n", C2 * 1e6);
printf("C3 = %d [µF]\n", C3 * 1e6);

