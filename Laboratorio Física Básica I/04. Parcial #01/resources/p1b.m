% valores de entrada
v = 2.22
ev = 0.03
m = 4.25
em = 0.01

% calculando el valor representativo
E = 0.5 * m * v^2

% calculando las derivadas parciales
d1 = m * v
d2 = 0.5 * (v^2)

% calculando el criterio pitagorico
e = sqrt( ((d1^2)*(ev^2)) + ((d2^2)*(em^2)) )
% calculo del error porcentual
EP = (e / E) * 100
