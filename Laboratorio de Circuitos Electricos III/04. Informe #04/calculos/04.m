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
U23 = phasor(220, 120);
U31 = phasor(220, -120);

M = linsolve([Z1+Z2 -Z2; -Z2 Z2+Z3],[U12; U23]);

toPhasor('M1', M(1));
toPhasor('M2', M(2));

toPhasor('Il1', M(1));
toPhasor('IL2', M(2)-M(1));
toPhasor('Il3', -M(2));

IT = M(1)+(M(2)-M(1))-M(2);
toPhasor('IT', IT);

