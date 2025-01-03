<Qucs Schematic 24.3.1>
<Properties>
  <View=312,124,960,857,1.2463,0,0>
  <Grid=10,10,1>
  <DataSet=fet1.1.dat>
  <DataDisplay=fet1.1.dpl>
  <OpenDisplay=0>
  <Script=fet1.1.m>
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
  <Vdc V1 1 370 460 24 -15 0 1 "9 V" 1>
  <GND * 1 370 580 0 0 0 0>
  <JFET T2N3819 1 630 460 12 -27 0 0 "nfet" 1 "-1.037" 1 "0.017837" 1 "0" 0 "1" 0 "1" 0 "181.3f" 0 "1" 0 "1.747p" 0 "2" 0 "4.627p" 0 "4p" 0 "0.5" 0 "0.5" 0 "0.3114" 0 "1.43e-017" 0 "1" 0 "1" 0 "26.85" 0 "3" 0 "0" 0 "-0.5" 0 "26.85" 0 "1" 0 "yes" 0>
  <VProbe Vgs 1 530 510 -7 37 1 0>
  <IProbe Id 1 630 400 -30 -7 0 3>
  <R RS 1 630 520 13 -14 1 1 "150 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VProbe Vds 1 760 460 -16 28 0 3>
  <.DC DC1 1 640 610 0 36 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <R RD 1 530 340 -28 -40 1 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 460 400 -74 -16 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 460 520 -77 -14 0 1 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <370 580 460 580 "" 0 0 0 "">
  <370 490 370 580 "" 0 0 0 "">
  <370 340 370 430 "" 0 0 0 "">
  <460 550 460 580 "" 0 0 0 "">
  <370 340 460 340 "" 0 0 0 "">
  <460 340 460 370 "" 0 0 0 "">
  <460 430 460 460 "" 0 0 0 "">
  <460 460 460 490 "" 0 0 0 "">
  <460 460 490 460 "" 0 0 0 "">
  <490 460 600 460 "" 0 0 0 "">
  <460 580 630 580 "" 0 0 0 "">
  <630 550 630 580 "" 0 0 0 "">
  <490 460 490 490 "" 0 0 0 "">
  <490 490 520 490 "" 0 0 0 "">
  <540 490 630 490 "" 0 0 0 "">
  <630 340 630 370 "" 0 0 0 "">
  <560 340 630 340 "" 0 0 0 "">
  <460 340 500 340 "" 0 0 0 "">
  <630 430 740 430 "" 0 0 0 "">
  <740 430 740 450 "" 0 0 0 "">
  <740 470 740 490 "" 0 0 0 "">
  <630 490 740 490 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 450 721 336 54 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/fet1.1:v(vgs)" #0000ff 0 3 1 0 0>
	<"ngspice/fet1.1:i(vid)" #0000ff 0 3 0 0 0>
	<"ngspice/fet1.1:v(vds)" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
