clear
close all
clc

% polarizacion por divisor de voltaje

Vcc = 9;
Vce = Vcc / 2;
Ve = 0.1 * Vcc;
Vbe = 0.7;

B = 200;

R2 = 220

% metodo aproximado
printf('Metodo aproximado\n');

Vb = Ve + Vbe
R1 = ((Vcc / Vb) - 1) * R2

Re = 100;

Rth = (R1 * R2) / (R1 + R2)
Vth = Vcc * ((R2) / (R1 + R2))
Ib = (Vth - Vbe) / (Rth + ( (B + 1) * Re))
Ic = B * Ib
Rc = ((Vcc - Vce) / Ic) - Re

