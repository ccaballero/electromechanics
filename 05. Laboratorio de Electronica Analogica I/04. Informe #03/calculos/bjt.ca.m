% polarizacion por divisor de voltaje
% 2N2222A NPN

B = 302;                    % hfe

Vs = 0.10;                  % 0.1 [V]

R1 = 1000;                  %   1 [kΩ]
R2 = 200;                   % 200 [Ω]
Rc = 100;                   % 100 [Ω]
Re = 22;                    %  22 [Ω]

Rs = 350;                   % 350 [Ω]   // resistencia interna
Rl = 100;                   % 100 [Ω]   // resistencia de carga

printf('R1=%d R2=%d Rc=%d Re=%d\n', R1, R2, Rc, Re);

Ic = 36.6e-3;               % 36.6[mA]
Ib = Ic / B;
Ie = Ic + Ib;

printf('Ic=%.2f Ib=%.4f Ie=%.2f\n', Ic*1e3, Ib*1e3, Ie*1e3);

re = (25e-3) / Ie           % resistencia de ca en el emisor
Rentbase = B * re
Renttotal = 1 / ((1 / R1) + (1 / R2) + (1 / Rentbase))

A = (Rs + Renttotal) / Renttotal        % atenuacion
Rcca = (Rc * Rl) / (Rc + Rl)            % resistencia en ca del colector
Av = Rcca / re
Avv = Av / A                            % ganancia de voltaje total

Is = Vs / (Rs + Renttotal)
Ai = Ic / Is                            % ganancia de corriente total
Ap = Avv * Ai                           % ganancia de potencia

printf('Vs=%.2f Vc=%.2f', Vs, Avv*Vs)

