<Qucs Schematic 24.3.1>
<Properties>
  <View=-2,280,1003,906,1.56849,0,0>
  <Grid=10,10,1>
  <DataSet=05.media_onda2.dat>
  <DataDisplay=05.media_onda2.dpl>
  <OpenDisplay=0>
  <Script=05.media_onda2.m>
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
  <Diode D1N4007 1 460 350 -26 13 1 2 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <C C1 1 510 380 17 -26 0 1 "470 uF" 1 "" 0 "neutral" 0>
  <R R1 1 610 380 13 -14 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 610 410 0 0 0 0>
  <MUT Tr1 1 400 380 -8 38 0 0 "311.13 mH" 0 "1.24 mH" 0 "1" 0>
  <Vac Vin 1 350 380 -81 -21 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 350 410 0 0 0 0>
  <.TR TR1 1 620 470 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <490 350 510 350 "" 0 0 0 "">
  <430 410 510 410 "" 0 0 0 "">
  <510 350 610 350 "" 0 0 0 "">
  <510 410 610 410 "" 0 0 0 "">
  <350 410 370 410 "" 0 0 0 "">
  <350 350 370 350 "" 0 0 0 "">
  <430 350 430 350 "V1" 440 320 0 "">
  <610 350 610 350 "Vout" 620 320 0 "">
</Wires>
<Diagrams>
  <Rect 350 620 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -24 4 24 1 -1 1 1 315 0 225 1 0 0 "t" "V1" "">
	<"ngspice/05.media_onda2:tran.v(v1)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 350 823 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 18.76 0.02 18.9 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/05.media_onda2:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
