<Qucs Schematic 24.3.1>
<Properties>
  <View=-5,101,1571,1017,1.4641,351,190>
  <Grid=10,10,1>
  <DataSet=10.regulador3.dat>
  <DataDisplay=10.regulador3.dpl>
  <OpenDisplay=0>
  <Script=10.regulador3.m>
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
  <MUT Tr1 1 440 360 -9 37 0 0 "311.13 mH" 0 "1.24 mH" 0 "1" 0>
  <Vac Vin 1 390 360 -81 -18 1 1 "311.13 V" 1 "50 Hz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 390 390 0 0 0 0>
  <Diode D1N4007_3 1 530 390 13 -26 0 1 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_1 1 530 330 13 -26 1 3 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_2 1 630 330 13 -26 0 1 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <Diode D1N4007_4 1 630 390 13 -26 1 3 "76.9p" 0 "1.45" 0 "26.5p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "42m" 0 "4.32u" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "1k" 0 "0" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0>
  <C C1 1 730 410 17 -13 0 1 "470 uF" 1 "" 0 "neutral" 0>
  <C C2 1 890 410 16 -12 0 1 "10 uF" 1 "" 0 "neutral" 0>
  <Lib L7909CV 1 810 460 -27 28 1 0 "VoltageRegulators" 0 "LM7909" 0>
  <R R1 1 990 410 16 -16 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 830 320 0 0 0 0>
  <.TR TR1 1 660 520 0 60 0 0 "lin" 1 "0" 1 "80 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <470 300 470 330 "" 0 0 0 "">
  <470 300 530 300 "" 0 0 0 "">
  <470 390 470 420 "" 0 0 0 "">
  <470 420 530 420 "" 0 0 0 "">
  <390 390 410 390 "" 0 0 0 "">
  <390 330 410 330 "" 0 0 0 "">
  <490 360 490 460 "" 0 0 0 "">
  <490 360 530 360 "" 0 0 0 "">
  <530 420 630 420 "" 0 0 0 "">
  <530 300 630 300 "" 0 0 0 "">
  <630 360 730 360 "" 0 0 0 "">
  <730 360 810 360 "" 0 0 0 "">
  <730 360 730 380 "" 0 0 0 "">
  <730 440 730 460 "" 0 0 0 "">
  <890 360 890 380 "" 0 0 0 "">
  <890 440 890 460 "" 0 0 0 "">
  <810 360 890 360 "" 0 0 0 "">
  <810 360 810 430 "" 0 0 0 "">
  <490 460 730 460 "" 0 0 0 "">
  <730 460 760 460 "" 0 0 0 "">
  <890 360 990 360 "" 0 0 0 "">
  <990 360 990 380 "" 0 0 0 "">
  <990 440 990 460 "" 0 0 0 "">
  <890 460 990 460 "Vout" 920 470 20 "">
  <860 460 890 460 "" 0 0 0 "">
  <810 320 810 360 "" 0 0 0 "">
  <810 320 830 320 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 390 650 240 160 3 #c0c0c0 1 00 1 0 0.02 0.08 0 -8.8 -0.1 -9.8 1 -1 1 1 315 0 225 1 0 0 "t" "Vout" "">
	<"ngspice/10.regulador3:tran.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
