clear
close all
clc

R = 500;   %[Ω]
C = 20e-6;  %[F]
f = 50;     %[Hz]

w = 2*pi*f;

Z = R + (1/(j*w*C))
toPhasor('Z', Z);

cosd(phase(Z))

