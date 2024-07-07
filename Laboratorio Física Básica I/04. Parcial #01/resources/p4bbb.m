% valores de entrada
D = 1.5192
eD = 0.2340
m = 18.9967
em = 6.6128

% calculando el valor representativo
p = (6 * m) / (pi * (D^3))

% calculando las derivadas parciales
d1 = (6) / (pi * (D^3))
d2 = -1 * ((18 * m) / (pi * (D^4)))

% calculando el criterio pitagorico
e = sqrt( ((d1^2)*(em^2)) + ((d2^2)*(eD^2)) )
% calculo del error porcentual
EP = (e / E) * 100
