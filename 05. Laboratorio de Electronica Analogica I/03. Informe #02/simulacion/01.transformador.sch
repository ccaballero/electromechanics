<Qucs Schematic 24.3.1>
<Properties>
  <View=91,250,1091,831,1.57659,0,0>
  <Grid=10,10,1>
  <DataSet=01.transformador.dat>
  <DataDisplay=01.transformador.dpl>
  <OpenDisplay=0>
  <Script=01.transformador.m>
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
  <MUT Tr1 1 490 350 -9 38 0 0 "311.13 mH" 0 "1 mH" 0 "1.1" 0>
  <Vac Vin 1 440 350 -81 -20 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 440 380 0 0 0 0>
  <R R1 1 540 350 17 -14 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 540 380 0 0 0 0>
  <.TR TR1 1 710 440 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <520 380 540 380 "" 0 0 0 "">
  <440 380 460 380 "" 0 0 0 "">
  <440 320 460 320 "Vin" 460 290 10 "">
  <520 320 540 320 "Vout" 550 290 20 "">
</Wires>
<Diagrams>
  <Rect 440 590 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -360 60 360 1 -1 1 1 315 0 225 1 0 0 "t" "Vin" "">
	<"ngspice/01.transformador:tran.v(vin)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 440 790 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -24 4 24 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/01.transformador:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
