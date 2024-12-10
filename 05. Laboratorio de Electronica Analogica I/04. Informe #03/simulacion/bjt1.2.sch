<Qucs Schematic 24.3.1>
<Properties>
  <View=156,260,1015,759,1.83567,0,0>
  <Grid=10,10,1>
  <DataSet=bjt1.2.dat>
  <DataDisplay=bjt1.2.dpl>
  <OpenDisplay=0>
  <Script=bjt1.2.m>
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
  <_BJT T2N2222A 1 640 460 8 -19 0 0 "npn" 0 "8.11e-14" 0 "1" 0 "1" 0 "0.5" 0 "0.225" 0 "302" 1 "24" 0 "1.06e-11" 0 "2" 0 "0" 0 "2" 0 "205" 0 "4" 0 "0" 0 "0" 0 "0.137" 0 "0.343" 0 "1.37" 0 "2.95e-11" 0 "0.675" 1 "0.33" 0 "1.52e-11" 0 "0.75" 0 "0.33" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "3.97e-10" 0 "0" 0 "0" 0 "0" 0 "8.5e-08" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1.5" 0 "3" 0 "1.11" 0 "26.85" 0 "1" 0 "yes" 0>
  <Vdc V1 1 400 460 24 -15 0 1 "9 V" 1>
  <VProbe Ve 1 750 550 2 26 0 3>
  <VProbe Vce 1 750 460 1 25 0 3>
  <IProbe Ic 1 640 400 -24 -4 0 3>
  <GND * 1 400 580 0 0 0 0>
  <.DC DC1 1 640 610 0 36 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <IProbe Ib 1 580 460 -6 16 0 0>
  <R R1 1 520 400 16 -16 1 1 "4.7 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 520 520 18 -14 1 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R RC 1 580 340 -28 -40 1 0 "200 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R RE 1 640 550 13 -14 1 1 "47 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <640 490 640 520 "" 0 0 0 "">
  <520 430 520 460 "" 0 0 0 "">
  <520 550 520 580 "" 0 0 0 "">
  <520 340 550 340 "" 0 0 0 "">
  <520 340 520 370 "" 0 0 0 "">
  <640 340 640 370 "" 0 0 0 "">
  <610 340 640 340 "" 0 0 0 "">
  <400 340 520 340 "" 0 0 0 "">
  <400 340 400 430 "" 0 0 0 "">
  <400 490 400 580 "" 0 0 0 "">
  <640 430 720 430 "" 0 0 0 "">
  <720 430 720 450 "" 0 0 0 "">
  <720 450 730 450 "" 0 0 0 "">
  <640 490 720 490 "" 0 0 0 "">
  <720 470 720 490 "" 0 0 0 "">
  <720 470 730 470 "" 0 0 0 "">
  <720 560 720 580 "" 0 0 0 "">
  <720 560 730 560 "" 0 0 0 "">
  <640 520 720 520 "" 0 0 0 "">
  <720 520 720 540 "" 0 0 0 "">
  <720 540 730 540 "" 0 0 0 "">
  <520 580 640 580 "" 0 0 0 "">
  <400 580 520 580 "" 0 0 0 "">
  <520 460 520 490 "" 0 0 0 "">
  <520 460 550 460 "" 0 0 0 "">
  <640 580 720 580 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 420 718 365 49 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/bjt1.2:v(vce)" #0000ff 0 3 0 0 0>
	<"ngspice/bjt1.2:v(ve)" #0000ff 0 3 0 0 0>
	<"ngspice/bjt1.2:i(vib)" #0000ff 0 3 0 0 0>
	<"ngspice/bjt1.2:i(vic)" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
