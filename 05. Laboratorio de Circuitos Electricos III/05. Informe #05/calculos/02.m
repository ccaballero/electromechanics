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

IF = UL / abs(Z)    %[A]
IL = sqrt(3) * IF   %[A]

P = sqrt(3) * UL * IL * cosd(phase(Z))
Q = sqrt(3) * UL * IL * sind(phase(Z))

