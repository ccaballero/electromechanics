clear
close all
clc

% leer datos previamente formateados
table = readtable('i1.csv')

% cambio de variable y remover el primer elemento
x = log10(table.Var1(1:end))
y = log10(table.Var2(1:end))

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

% calculo del coeficiente de permisividad
q1 = -3
q2 = 4

P = abs(q1 * q2) / (4 * pi * a)
eP = (-1 * q1 * q2 * sa) / (4 * pi * a * a)
seP = (eP / P) * 100

% conversion de unidades 
SIP = P * (1/10^6) * (1/10^6) * 100 * 100
SIeP = eP * (1/10^6) * (1/10^6) * 100 * 100

% calculo de la diferencia porcentual
teorico = 8.8541878176 * 10^-12
diferencia = (abs(teorico - SIP) * 100 ) / teorico
