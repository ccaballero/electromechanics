<Qucs Schematic 2.0.0>
<Properties>
  <View=0,-120,1710,898,1,120,120>
  <Grid=10,10,1>
  <DataSet=practica1.dat>
  <DataDisplay=practica1.dpl>
  <OpenDisplay=1>
  <Script=practica1.1.m>
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
  <GND * 1 420 440 0 0 0 0>
  <Diode D1 1 660 290 13 -26 0 1 "76.9p" 0 "1.45" 0 "39.8p" 0 "0.333" 0 "0.7" 1 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "0" 0 "0" 0 "1" 0 "1" 0 "50" 0 "5u" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D2 1 660 350 13 -26 0 1 "76.9p" 0 "1.45" 0 "39.8p" 0 "0.333" 0 "0.7" 1 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "0" 0 "0" 0 "1" 0 "1" 0 "50" 0 "5u" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R1 1 450 200 -26 -53 1 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VProbe VV1 1 500 320 -16 28 0 3>
  <VProbe VVD 1 800 320 -16 28 0 3>
  <IProbe AI 1 570 200 -26 16 0 0>
  <Vfile V1 1 360 320 18 -26 0 1 "C:/Users/msi/UMSS/Laboratorio de Electronica Analogica I/Informe #01/simulacion/practica1.1.csv" 0 "linear" 0 "no" 0 "1" 0 "0" 0>
  <.TR TR1 1 870 200 0 66 0 0 "lin" 1 "0" 1 "10 s" 1 "21" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <360 200 360 260 "" 0 0 0 "">
  <360 200 420 200 "" 0 0 0 "">
  <480 200 540 200 "" 0 0 0 "">
  <600 200 660 200 "" 0 0 0 "">
  <660 200 660 260 "" 0 0 0 "">
  <660 380 660 440 "" 0 0 0 "">
  <420 440 660 440 "" 0 0 0 "">
  <360 440 420 440 "" 0 0 0 "">
  <360 350 360 380 "" 0 0 0 "">
  <660 380 780 380 "" 0 0 0 "">
  <780 330 780 380 "" 0 0 0 "">
  <660 260 780 260 "" 0 0 0 "">
  <780 260 780 310 "" 0 0 0 "">
  <360 260 360 290 "" 0 0 0 "">
  <360 260 480 260 "" 0 0 0 "">
  <480 260 480 310 "" 0 0 0 "">
  <360 380 360 440 "" 0 0 0 "">
  <360 380 480 380 "" 0 0 0 "">
  <480 330 480 380 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 400 640 240 160 3 #c0c0c0 1 00 1 0 1 5 1 -3.84358e-05 0.0002 0.000422794 1 -1 1 1 315 0 225 0 0 0 "Voltaje de entrada [V]" "Corriente [A]" "">
	<"ngspice/tran.i(vai)@tran.v(vv1)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 740 640 240 160 3 #c0c0c0 1 00 1 0 1 5 1 -0.115642 0.5 1.27206 1 -1 1 1 315 0 225 0 0 0 "Voltaje de entrada [V]" "Voltaje de los diodos [V]" "">
	<"ngspice/tran.v(vvd)@tran.v(vv1)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Arrow 580 240 0 230 20 8 #aa0000 1 1 0>
  <Arrow 830 360 0 100 20 8 #aa0000 1 1 0>
</Paintings>
