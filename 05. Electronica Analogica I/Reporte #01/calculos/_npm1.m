clear
close all
clc

% polarizacion por divisor de voltaje

R1 = 330;  % [Ω]
R2 = 330;  % [Ω]

Rc = 100;  % [Ω]
Re = 100;  % [Ω]

Vcc = 9;   % [V]
Vbe = 0.7; % [V]

B = 180.3;

% metodo exacto
printf('Metodo exacto\n');

Rth = (R1 * R2) / (R1 + R2)
Vth = Vcc * ((R2) / (R1 + R2))

Ib = (Vth - Vbe) / (Rth + ( (B + 1) * Re))
Ic = B * Ib
Ie = (B + 1) * Ib

Vce = Vcc - (Ic * (Rc + Re))

% metodo aproximado
printf('\n');
printf('Metodo aproximado\n');

printf('B*Re (%d) > 10*R2 (%d)\n', B * Re, 10 * R2);

Vb = ((R2) / (R1 + R2)) * Vcc
Ve = Vb - Vbe

Ie = Ve / Re
Ib = Ie / (B + 1)

Vce = Vcc - (Ic * (Rc + Re))

