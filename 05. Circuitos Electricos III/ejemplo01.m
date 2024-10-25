clear
close all
clc

Z1 = 40 + 20j;  %[Ω]
Z2 = 55 + 15j;  %[Ω]
Z3 = 60 + 80j;  %[Ω]
ZL = 3.5 + 6.2j;  %[Ω]

modUab = 484.97;
angleUab = -85;
Uab = phasor(modUab, angleUab);  %[V] rms

% a)
Za = ZL + ((Z1*Z3)/(Z1+Z2+Z3));  %[Ω]
toPhasor('Za', Za);
Zb = ZL + ((Z1*Z2)/(Z1+Z2+Z3));  %[Ω]
toPhasor('Zb', Zb);
Zc = ZL + ((Z2*Z3)/(Z1+Z2+Z3));  %[Ω]
toPhasor('Zc', Zc);

Uf = abs(Uab)/sqrt(3);
Ol = angleUab + 30;

Ua = phasor(Uf, Ol);
Ub = phasor(Uf, Ol+120);
Uc = phasor(Uf, Ol-120);

U0 = ((Ua/Za) + (Ub/Zb) + (Uc/Zc)) / ((1/Za) + (1/Zb) + (1/Zc));
toPhasor('U0', U0);

Ia = (Ua - U0) / Za;
toPhasor('Ia', Ia);
Ib = (Ub - U0) / Zb;
toPhasor('Ib', Ib);
Ic = (Uc - U0) / Zc;
toPhasor('Ic', Ic);

% b)
UAB = Uab + ZL * Ib - ZL * Ia;
toPhasor('UAB', UAB);

IAB = UAB / Z1;
toPhasor('IAB', IAB);

PZ1 = abs(IAB)^2*real(Z1)
QZ1 = abs(IAB)^2*imag(Z1)

% c)
PT = (abs(Ia)^2*real(Za)) + (abs(Ib)^2*real(Zb)) + (abs(Ic)^2*real(Zc))
QT = (abs(Ia)^2*imag(Za)) + (abs(Ib)^2*imag(Zb)) + (abs(Ic)^2*imag(Zc))


