clear
close all
clc

ti = 400
te = 60
ta = 25

matriz = zeros(12,9);

printf("\n")

% inicializacion
matriz(1,1) = ti;
for (j = 2:8)
    matriz(1,j) = ta;
endfor
matriz(1,9) = te;

% iteracion
for (i = 2:12)
    if(mod(i,2)==0)
        matriz(i,1) = ti;
        matriz(i,2) = 0.5 * (matriz(i - 1,1) + matriz(i - 1,3));
        matriz(i,3) = matriz(i - 1,3);
        matriz(i,4) = 0.5 * (matriz(i - 1,3) + matriz(i - 1,5));
        matriz(i,5) = matriz(i - 1,5);
        matriz(i,6) = 0.5 * (matriz(i - 1,5) + matriz(i - 1,7));
        matriz(i,7) = matriz(i - 1,7);
        matriz(i,8) = 0.5 * (matriz(i - 1,7) + matriz(i - 1,9));
        matriz(i,9) = te;
    else
        matriz(i,1) = ti;
        matriz(i,2) = matriz(i - 1,2);
        matriz(i,3) = 0.5 * (matriz(i - 1,2) + matriz(i - 1,4));
        matriz(i,4) = matriz(i - 1,4);
        matriz(i,5) = 0.5 * (matriz(i - 1,4) + matriz(i - 1,6));
        matriz(i,6) = matriz(i - 1,6);
        matriz(i,7) = 0.5 * (matriz(i - 1,6) + matriz(i - 1,8));
        matriz(i,8) = matriz(i - 1,8);
        matriz(i,9) = te;
    endif
endfor

% printing
printf("#\t")
for (j = 1:9)
    printf("%d\t",j - 1)
endfor
printf("\n")
for(i = 1:12)
    printf("%d\t", i - 1)
    for (j = 1:9)
        printf("%.2f\t",matriz(i,j))
    endfor
    printf("\n")
endfor

