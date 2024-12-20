<Qucs Schematic 24.3.1>
<Properties>
  <View=-58,152,1149,851,1.36513,74,0>
  <Grid=10,10,1>
  <DataSet=06.derivacion_central2.dat>
  <DataDisplay=06.derivacion_central2.dpl>
  <OpenDisplay=0>
  <Script=06.derivacion_central2.m>
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
  <GND * 1 350 350 0 0 0 0>
  <Diode D1N4007_1 1 500 250 -26 13 1 2 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_2 1 500 390 -26 13 1 2 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Vac Vin 1 350 320 -84 -19 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 510 340 0 0 0 0>
  <C C1 1 590 370 17 -26 0 1 "470 uF" 1 "" 0 "neutral" 0>
  <GND * 1 590 400 0 0 0 0>
  <R R1 1 690 370 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 690 400 0 0 0 0>
  <.TR TR1 1 650 460 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <MUT2 Tr1 1 440 320 -13 78 0 2 "1.24 mH" 0 "1.24 mH" 0 "311.13 mH" 0 "1" 0 "1" 0 "1" 0>
</Components>
<Wires>
  <350 350 410 350 "" 0 0 0 "">
  <350 290 410 290 "" 0 0 0 "">
  <470 330 490 330 "" 0 0 0 "">
  <470 310 490 310 "" 0 0 0 "">
  <490 310 490 330 "" 0 0 0 "">
  <510 330 510 340 "" 0 0 0 "">
  <490 330 510 330 "" 0 0 0 "">
  <530 250 550 250 "" 0 0 0 "">
  <550 250 550 320 "" 0 0 0 "">
  <530 390 550 390 "" 0 0 0 "">
  <590 320 590 340 "" 0 0 0 "">
  <550 320 550 390 "" 0 0 0 "">
  <550 320 590 320 "" 0 0 0 "">
  <590 320 690 320 "" 0 0 0 "">
  <690 320 690 340 "" 0 0 0 "">
  <470 250 470 250 "V1" 480 220 0 "">
  <470 390 470 390 "V2" 480 360 0 "">
  <690 340 690 340 "Vout" 700 310 0 "">
</Wires>
<Diagrams>
  <Rect 350 610 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -24 4 24 1 -20 5 20 315 0 225 1 0 0 "t" "V1" "V2">
	<"ngspice/06.derivacion_central2:tran.v(v1)" #0000ff 0 3 0 0 0>
	<"ngspice/06.derivacion_central2:tran.v(v2)" #ff0000 0 3 0 0 1>
  </Rect>
  <Rect 350 810 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 18.76 0.02 18.9 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/06.derivacion_central2:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
