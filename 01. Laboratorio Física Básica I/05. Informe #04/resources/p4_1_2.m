% leer datos previamente formateados
table = readtable('i3_1.csv')

% cambio de variable y remover el primer elemento
x = log10(table.Var1(2:end))
y = log10(table.Var2(2:end))

% tamano de la muestra
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)
sxx = sum(x.*x)
sxy = sum(x.*y)

% Calculo de los valores de la recta
D = (n * sxx) - (sx)^2
A = ( (sy * sxx) - (sxy * sx) ) / D
B = ( (n * sxy) - (sx * sy) ) / D

% Calculo del error
Y = A + (B * x)
d = y - Y

sdd = sum(d.*d)
s2 = sdd / ( n - 2)

sA = sqrt( (s2 * sxx) / D )
sB = sqrt( (s2 * n) / D )

%calculando el error porcentual
EA = (sA / A) * 100
EB = (sB / B) * 100

%calculando los valores originales
a = 10^A
b = B

sa = (10^A) * log(10) * sA
sb = sB

%calculando el error porcentual
Ea = (sa / a) * 100
Eb = (sb / b) * 100
