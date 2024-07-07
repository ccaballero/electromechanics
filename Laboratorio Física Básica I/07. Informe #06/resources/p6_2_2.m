% leer datos previamente formateados
table = readtable('i6_2.csv')

% asignacion de variables
x = table.Var1
y = table.Var2

% tamano de la muestra
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)
sxx = sum(x.*x)
sxy = sum(x.*y)
syy = sum(y.*y)

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

% calculo de correlacion
px = mean(x)
py = mean(y)
dx = x - px
dy = y - py
dxx = sum(dx.*dx)
dyy = sum(dy.*dy)

R = sum(dx.*dy) / sqrt( dxx * dyy )