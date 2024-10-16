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

U0 = ((Ua/Z1) + (Ub/Z2) + (Uc/Z3)) / ((1/Z1) + (1/Z2) + (1/Z3));
toPhasor('U0', U0);

IL1 = (Ua - U0) / Z1;
toPhasor('IL1', IL1);
IL2 = (Ub - U0) / Z2;
toPhasor('IL2', IL2);
IL3 = (Uc - U0) / Z3;
toPhasor('IL3', IL3);

