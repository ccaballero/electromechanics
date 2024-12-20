clear
close all
clc

a=[
    -50,
    50,
    150,
    150,
    50,
    -50,
    10,
    90,
    150,
    150,
    90,
    10,
    70,
    100,
    120,
    120,
    100,
    70,
    200,
    300,
    400,
    400,
    300,
    200,
    200,
    270,
    340,
    340,
    270,
    200,
    230,
    250,
    280,
    280,
    250,
    230
]

b=[
    292.1,
    319.2,
    249.2,
    51.2,
    -19.4,
    9.4,
    248.1,
    262.8,
    214.5,
    82.9,
    37.0,
    52.3,
    185.2,
    194.6,
    186.9,
    113.5,
    105.8,
    114.0,
    252.8,
    322.7,
    3.5,
    297.4,
    -23.0,
    47.6,
    215.7,
    265.7,
    247.5,
    52.9,
    35.3,
    84.1,
    189.9,
    195.2,
    187.5,
    114.0,
    104.0,
    112.3
]

% personalizar grafica
xlabel('x $[cm]$','interpreter','latex')
ylabel('y $[cm]$','interpreter','latex')

% graficar puntos y lineas
hold on
plot(a,b,'x')
plot([100,250],[150,150],'o')
hold off
