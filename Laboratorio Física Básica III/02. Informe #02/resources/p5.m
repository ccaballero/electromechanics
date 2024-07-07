clear
close all
clc

% leer datos previamente formateados
table = readtable('i4.csv')
X = table.Var1
Y = table.Var3+200

% cambio de variable y remover el primer elemento
x = log10(X)
y = log10(Y)

% tamano de la muestra
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)

xx = x.*x
sxx = sum(xx)

yy = y.*y
syy = sum(yy)

xy = x.*y
sxy = sum(xy)

% calculo de los valores de la recta
D = (n * sxx) - (sx)^2
DD = (n * syy) - (sy)^2
A = ( (sy * sxx) - (sxy * sx) ) / D
B = ( (n * sxy) - (sx * sy) ) / D

% calculo del error
Y = A + (B * x)
d = y - Y

dd = d.*d
sdd = sum(dd)
s2 = sdd / ( n - 2)

sA = sqrt( (s2 * sxx) / D )
sB = sqrt( (s2 * n) / D )

% calculando el error porcentual
EA = (sA / A) * 100
EB = (sB / B) * 100

% calculando los valores originales
a = 10^A
b = B

% calculando el error absoluto
sa = (10^A) * log(10) * sA
sb = sB

% calculando el error porcentual
Ea = (sa / a) * 100
Eb = (sb / b) * 100

% calculo de correlacion
R = ((n * sxy) - (sx * sy)) / sqrt( D * DD )
