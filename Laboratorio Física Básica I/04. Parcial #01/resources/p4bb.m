% leer datos desde fichero
table = readtable('i4.csv')

% diametro
x = table.Var1

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
P = 0.001
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100

% masa
x = table.Var2

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
P = 0.01
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100
