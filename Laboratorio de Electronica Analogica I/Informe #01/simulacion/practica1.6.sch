<Qucs Schematic 2.0.0>
<Properties>
  <View=0,0,847,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=practica1.dat>
  <DataDisplay=practica1.dpl>
  <OpenDisplay=1>
  <Script=practica1.6.m>
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
  <GND * 1 220 320 0 0 0 3>
  <GND * 1 500 500 0 0 0 0>
  <Diode D1 1 500 410 -62 -26 0 3 "76.9p" 0 "1.45" 0 "39.8p" 0 "0.333" 0 "0.7" 1 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "0" 0 "0" 0 "1" 0 "1" 0 "50" 0 "5u" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <VProbe V0 1 580 410 -16 28 0 3>
  <R R1 1 410 320 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VProbe VV1 1 290 400 -55 -16 0 2>
  <Vfile V1 1 290 320 -26 -37 1 0 "C:/Users/msi/UMSS/Laboratorio de Electronica Analogica I/Informe #01/simulacion/practica1.3.csv" 0 "linear" 0 "no" 0 "1" 0 "0" 0>
  <.TR TR1 1 650 320 0 66 0 0 "lin" 1 "0" 1 "8 s" 1 "500" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vdc VX 1 500 470 -64 -26 1 1 "5 V" 1>
</Components>
<Wires>
  <320 320 380 320 "" 0 0 0 "">
  <500 320 500 380 "" 0 0 0 "">
  <440 320 500 320 "" 0 0 0 "">
  <220 320 260 320 "" 0 0 0 "">
  <560 380 560 400 "" 0 0 0 "">
  <500 380 560 380 "" 0 0 0 "">
  <320 320 320 380 "" 0 0 0 "">
  <300 380 320 380 "" 0 0 0 "">
  <260 380 280 380 "" 0 0 0 "">
  <260 320 260 380 "" 0 0 0 "">
  <560 420 560 500 "" 0 0 0 "">
  <500 500 560 500 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 220 710 240 160 3 #c0c0c0 1 00 1 0 2 8 0 -15 5 15 1 -1 1 1 315 0 225 0 0 0 "Tiempo [s]" "Voltaje de entrada [V]" "">
	<"ngspice/tran.v(vv1)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 540 710 240 160 3 #c0c0c0 1 00 1 0 2 8 0 -15 5 15 1 -1 1 1 315 0 225 0 0 0 "Tiempo [s]" "Voltaje del diodo [V]" "">
	<"ngspice/tran.v(v0)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Arrow 290 450 0 90 20 8 #aa0000 1 1 0>
  <Arrow 600 450 0 90 20 8 #aa0000 1 1 0>
</Paintings>
