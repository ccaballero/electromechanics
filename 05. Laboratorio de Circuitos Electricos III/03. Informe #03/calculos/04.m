clear
close all
clc

R1 = 1000;  %[Ω]
R2 = 250;   %[Ω]
R3 = 500;   %[Ω]
L = 1;      %[H]
C = 10e-6;  %[F]
f = 50;     %[Hz]

w = 2*pi*f;

Z1 = R1
Z2 = R2 + (j*w*L)
Z3 = R3 + (1/(j*w*C))

Ua = phasor(220, 0)
Ub = phasor(220, 120)
Uc = phasor(220, -120)

IL1 = Ua / Z1;
toPhasor('IL1', IL1);
IL2 = Ub / Z2;
toPhasor('IL2', IL2);
IL3 = Uc / Z3;
toPhasor('IL3', IL3);

IL0 = IL1 + IL2 + IL3;
toPhasor('IL0', IL0);

