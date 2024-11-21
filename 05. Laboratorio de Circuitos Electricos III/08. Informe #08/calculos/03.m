R = 500;    %[Ω]
L = 0.5;    %[H]
C = 20e-6;  %[F]
f = 50;     %[Hz]

w = 2*pi*f;

Z1 = R + (j*w*L)
Z2 = (1/(j*w*C))
Z = (Z1 * Z2) / (Z1 + Z2)

toPhasor('Z', Z);

fp = cosd(phase(Z))

UL = 380;           %[V]
UF = UL / sqrt(3)   %[V]
IL = UF / abs(Z)    %[A]

P = sqrt(3) * UL * IL * cosd(phase(Z))
Q = sqrt(3) * UL * IL * sind(phase(Z))
S = sqrt(P^2 + Q^2)

