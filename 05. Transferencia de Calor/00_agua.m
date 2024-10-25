clear
close all
clc

t = csvread('t_agua.csv');
dim = size(t);

%printf("T\tp\tu\tCp\tk\tb\tl\tv\ta\tPr\tgav\n");

function [v] = interpolar(y1,y2,y3,x1,x3)
    v = x1 + ( (y2-y1)/(y3-y1) * (x3-x1) );
endfunction

for (i = 1:dim(1))
    printf(
        %"%d\t%.2f\t%.4f\t%.5f\t%.4f\t%.3f\t%.2f\t%.4f\t%.3f\t%.4f\t%.2f\n",
        "%d & %.2f & %.4f & %.5f & %.4f & %.3f & %.2f & %.4f & %.3f & %.4f & %.2f \\\\\n",
        t(i,1),
        t(i,2),
        t(i,3),
        t(i,4),
        t(i,5),
        t(i,6),
        t(i,7),
        t(i,8),
        t(i,9),
        t(i,10),
        t(i,11)
    );

    if (dim(1) != i)
        for (j = t(i,1)+1:t(i+1,1)-1)
            printf(
                %"%d\t%.2f\t%.4f\t%.5f\t%.4f\t%.3f\t%.2f\t%.4f\t%.3f\t%.4f\t%.2f\n",
                "%d & %.2f & %.4f & %.5f & %.4f & %.3f & %.2f & %.4f & %.3f & %.4f & %.2f \\\\\n",
                j,
                interpolar(t(i,1),j,t(i+1,1),t(i, 2),t(i+1, 2)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 3),t(i+1, 3)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 4),t(i+1, 4)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 5),t(i+1, 5)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 6),t(i+1, 6)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 7),t(i+1, 7)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 8),t(i+1, 8)),
                interpolar(t(i,1),j,t(i+1,1),t(i, 9),t(i+1, 9)),
                interpolar(t(i,1),j,t(i+1,1),t(i,10),t(i+1,10)),
                interpolar(t(i,1),j,t(i+1,1),t(i,11),t(i+1,11))
            );
        endfor
    endif
endfor

