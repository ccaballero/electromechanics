<Qucs Schematic 24.3.1>
<Properties>
  <View=-124,91,1452,1007,1,0,0>
  <Grid=10,10,1>
  <DataSet=02.media_onda1.dat>
  <DataDisplay=02.media_onda1.dpl>
  <OpenDisplay=0>
  <Script=02.media_onda1.m>
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
  <Diode D1N4007 1 550 320 -26 13 1 2 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <MUT Tr1 1 490 350 -10 36 0 0 "311.13 mH" 0 "1 mH" 0 "1.1" 0>
  <Vac Vin 1 440 350 -80 -20 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 440 380 0 0 0 0>
  <R R1 1 600 350 12 -13 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 600 380 0 0 0 0>
  <.TR TR1 1 710 440 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <520 380 600 380 "" 0 0 0 "">
  <440 380 460 380 "" 0 0 0 "">
  <440 320 460 320 "" 0 0 0 "">
  <580 320 600 320 "" 0 0 0 "">
  <520 320 520 320 "V1" 530 290 0 "">
  <600 320 600 320 "Vout" 610 290 0 "">
</Wires>
<Diagrams>
  <Rect 440 590 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -24 4 24 1 -1 1 1 315 0 225 1 0 0 "t" "V1" "">
	<"ngspice/02.media_onda1:tran.v(v1)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 440 800 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -24 4 24 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/02.media_onda1:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
