clear
close all
clc

% carga RL
UF1 = [222 221 223]
UR1 = [209 208 209]
FP1 = UR1 ./ UF1

pFP1 = mean(FP1)

d1 = FP1 - pFP1
d11 = d1.*d1

e1 = sqrt( sum(d11) / (length(FP1)-1) )

% carga RC
UF2 = [222 222 223]
UR2 = [211 211 212]
FP2 = UR2 ./ UF2

pFP2 = mean(FP2)

d2 = FP2 - pFP2
d22 = d2.*d2

e2 = sqrt( sum(d22) / (length(FP2)-1) )

