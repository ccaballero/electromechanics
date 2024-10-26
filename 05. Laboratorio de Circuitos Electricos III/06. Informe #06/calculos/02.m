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

printf("\n");

PZ1 = abs(IL1)^2 * real(Z1)
PZ2 = abs(IL2)^2 * real(Z2)
PZ3 = abs(IL3)^2 * real(Z3)
printf("PT: %d\n", PZ1 + PZ2 + PZ3);

QZ1 = abs(IL1)^2 * imag(Z1)
QZ2 = abs(IL2)^2 * imag(Z2)
QZ3 = abs(IL3)^2 * imag(Z3)
printf("QT: %d\n", QZ1 + QZ2 + QZ3);

printf("\n");

UL1L2 = phasor(380,-30);
UL2L3 = phasor(380,90);
UL3L1 = phasor(380,-150);
UL1L3 = phasor(abs(UL3L1), phase(UL3L1) + 180);

toPhasor('UL1L3', UL1L3);
toPhasor('UL2L3', UL2L3);

P1 = UL1L3 * conj(IL1)
P2 = UL2L3 * conj(IL2)
printf("PT: %d\n", real(P1) + real(P2));
printf("QT: %d\n", imag(P1) + imag(P2));

