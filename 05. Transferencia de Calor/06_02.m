clear
close all
clc

% condensador tubular de paso sencillo

% fluido caliente: vapor de agua (exterior)
tv = 100    % [ºC]

% fluido frio: agua (interno)
tci = 10    % [ºC]
v = 0.5     % [m/s]
kt = 32     % [kcal/mhºC]

Nt = 120
DI = 3/4    % [pulg]
er = 0.109  % [pulg]
L = 210     % [cm]

% incrustaciones
ei = 0.2    % [mm]
ki = 1.6    % [kcal/mhºC]

hi = 2000   % [kcal/m²hºC]
ho = 5000   % [kcal/m²hºC]


DE = DI + (2 * er)  % [pulg]

DI = DI * 0.0254  % [m]
DE = DE * 0.0254  % [m]

Ui_limpio = 1 / ( (1/hi) + ( (DI/(2*kt)) * log(DE/DI) ) + ( (1/ho) * (DI/DE) ) )
Ui_dis = 1 / ( (1/Ui_limpio) + ( (ei/1000) / ki ) )

L = L / 100 % [m]

A1t = pi * DI * L
Adi = Nt * A1t

rho10 = 999.70
fm1t = v * rho10 * 0.25 * pi * DI^2 * 3600  % [kg/h]

fmt = Nt * fm1t
Cp10 = 1.002

_tco = 32.36771930

for (x = -10:10)
    tco = _tco + (x * 0.0000001);
    qs = fmt * Cp10 * (tco - tci);
    q = (Ui_dis * Adi * (10 - tco)) / log ((100-tco)/90);

    diff = qs - q;

    printf("%.8f\t\t%.5f\t%.5f\t\t%.10f\n", tco, qs, q, diff);
endfor

tco = 32.36772

qc = fmt * Cp10 * (tco - tci);
printf("%.5f\n", qc);

dH = 539

fmv = qc / dH

