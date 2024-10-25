clear
close all
clc

ti = 850
te = 15

d = 10
alpha = 0.49
dt = (1 / 12)^2 / (2 * alpha)   % [h]
ndt = (45/60) / dt
t = round(ndt)

matriz = zeros(t + 1,d + 1);

printf("\n")

% inicializacion
matriz(1,1) = te;
for (j = 2:d)
    matriz(1,j) = ti;
endfor
matriz(1,d + 1) = te;

% iteracion
for (i = 2:t + 1)
    if(mod(i,2)==0)
        matriz(i,1) = te;
        matriz(i,2) = 0.5 * (matriz(i - 1,1) + matriz(i - 1,3));
        matriz(i,3) = matriz(i - 1,3);
        matriz(i,4) = 0.5 * (matriz(i - 1,3) + matriz(i - 1,5));
        matriz(i,5) = matriz(i - 1,5);
        matriz(i,6) = 0.5 * (matriz(i - 1,5) + matriz(i - 1,7));
        matriz(i,7) = matriz(i - 1,7);
        matriz(i,8) = 0.5 * (matriz(i - 1,7) + matriz(i - 1,9));
        matriz(i,9) = matriz(i - 1,9);
        matriz(i,10) = 0.5 * (matriz(i - 1,9) + matriz(i - 1,11));
        matriz(i,11) = te;
    else
        matriz(i,1) = te;
        matriz(i,2) = matriz(i - 1,2);
        matriz(i,3) = 0.5 * (matriz(i - 1,2) + matriz(i - 1,4));
        matriz(i,4) = matriz(i - 1,4);
        matriz(i,5) = 0.5 * (matriz(i - 1,4) + matriz(i - 1,6));
        matriz(i,6) = matriz(i - 1,6);
        matriz(i,7) = 0.5 * (matriz(i - 1,6) + matriz(i - 1,8));
        matriz(i,8) = matriz(i - 1,8);
        matriz(i,9) = 0.5 * (matriz(i - 1,8) + matriz(i - 1,10));
        matriz(i,10) = matriz(i - 1,10);
        matriz(i,11) = te;
    endif
endfor

% printing
printf("#\t")
for (j = 1:d + 1)
    printf("%d\t",j - 1)
endfor
printf("\n")
for(i = 1:t + 1)
    printf("%d\t", i - 1)
    for (j = 1:d + 1)
        printf("%.2f\t",matriz(i,j))
    endfor
    printf("\n")
endfor

