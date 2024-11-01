clear
close all
clc

R = 500;  %[Ω]
L = 0.5;  %[H]
f = 50;   %[Hz]

w = 2*pi*f;

Z = R + (j*w*L)
toPhasor('Z', Z);

cosd(phase(Z))

