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

Z1 = R1;
Z2 = R2 + (j*w*L);
Z3 = R3 + (1/(j*w*C));

U12 = phasor(220, 0);
U23 = phasor(220, -120);
U31 = phasor(220, 120);

If1 = U12/Z1;
toPhasor('If1', If1);
If2 = U23/Z2;
toPhasor('If2', If2);
If3 = U31/Z3;
toPhasor('If3', If3);

Il1 = If1 - If3;
toPhasor('Il1', Il1);
Il2 = If2 - If1;
toPhasor('IL2', Il2);
Il3 = If3 - If2;
toPhasor('Il3', Il3);

IT = Il1 + Il2 + Il3;
toPhasor('IT', IT);

