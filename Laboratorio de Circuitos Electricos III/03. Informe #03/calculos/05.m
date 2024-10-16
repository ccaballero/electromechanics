clear
close all
clc

IL1 = phasor(0.38, 2.86)
IL2 = phasor(0.44, -125.59)
IL3 = phasor(0.36, 109.35)

T = IL1 + IL2 + IL3
toPhasor('T', T)

