% leer datos desde fichero
x = importdata('i1_5.csv')

% tamano de la muestra
n = length(x)
% sumatoria
S = sum(x)
% promedio
m = mean(x)
% calculo de las discrepancias
d = x - m
% calculo de las discrepancias al cuadrado
d2 = d.*d
% sumatoria de las discrepancias al cuadrado
S2 = sum(d2)
% calculo del error
s = sqrt(S2 / (n * (n - 1)))
% precision del instrumento
P = 0.0001
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100
