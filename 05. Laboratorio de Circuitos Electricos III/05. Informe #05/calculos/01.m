clear
close all
clc

R = 500;   %[Ω]
L = 0.5;   %[H]
f = 50;    %[Hz]

w = 2*pi*f;

Z = R + (j*w*L);
toPhasor('Z', Z)

UL = 220;           %[V]
UF = UL / sqrt(3)   %[V]

IL = UF / abs(Z)    %[A]

P = sqrt(3) * UL * IL * cosd(phase(Z))
Q = sqrt(3) * UL * IL * sind(phase(Z))

