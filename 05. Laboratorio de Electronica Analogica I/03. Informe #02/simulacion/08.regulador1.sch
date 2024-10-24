<Qucs Schematic 24.3.1>
<Properties>
  <View=61,145,1395,921,1.18101,0,0>
  <Grid=10,10,1>
  <DataSet=08.regulador1.dat>
  <DataDisplay=08.regulador1.dpl>
  <OpenDisplay=0>
  <Script=08.regulador1.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 490 370 0 0 0 0>
  <MUT Tr1 1 440 360 -9 38 0 0 "311.13 mH" 0 "1.24 mH" 0 "1" 0>
  <Vac Vin 1 390 360 -83 -19 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 390 390 0 0 0 0>
  <Diode D1N4007_3 1 530 390 13 -26 0 1 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_1 1 530 330 13 -26 1 3 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_2 1 630 330 13 -26 0 1 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_4 1 630 390 13 -26 1 3 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <C C1 1 730 410 18 -14 0 1 "470 uF" 1 "" 0 "neutral" 0>
  <GND * 1 730 440 0 0 0 0>
  <R R2 1 780 360 -27 -39 1 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 830 440 0 0 0 0>
  <Lib D1N4742A 1 830 410 16 -7 1 3 "Z-Diodes" 0 "1N4742A" 0>
  <R R1 1 930 410 14 -17 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 930 440 0 0 0 0>
  <.TR TR1 1 670 490 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <470 300 470 330 "" 0 0 0 "">
  <470 300 530 300 "" 0 0 0 "">
  <470 390 470 420 "" 0 0 0 "">
  <470 420 530 420 "" 0 0 0 "">
  <390 390 410 390 "" 0 0 0 "">
  <390 330 410 330 "" 0 0 0 "">
  <490 360 490 370 "" 0 0 0 "">
  <490 360 530 360 "" 0 0 0 "">
  <530 420 630 420 "" 0 0 0 "">
  <530 300 630 300 "" 0 0 0 "">
  <630 360 730 360 "" 0 0 0 "">
  <730 360 730 380 "" 0 0 0 "">
  <810 360 830 360 "" 0 0 0 "">
  <730 360 750 360 "" 0 0 0 "">
  <830 360 830 380 "" 0 0 0 "">
  <830 360 930 360 "" 0 0 0 "">
  <930 360 930 380 "" 0 0 0 "">
  <930 380 930 380 "Vout" 940 350 0 "">
</Wires>
<Diagrams>
  <Rect 390 610 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 11.9 0.01 12 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/08.regulador1:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>