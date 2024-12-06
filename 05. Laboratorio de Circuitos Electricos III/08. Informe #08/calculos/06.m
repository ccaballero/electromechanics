IL1 = 1.396;
IL2 = 418.1e-3;

IL = IL1 + IL2

VR = 209.1;
VL = 66.55;
VC = 219.4;

PT = 3 * (IL2 * VR)
QT = 3 * ((IL2 * VL) - (IL1 * VC))

ST = sqrt(PT^2 + QT^2)
fp = PT / ST

