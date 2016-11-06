//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////  SYNTHDEFS  //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(


SynthDef(\masterTape,{ arg bufnum, out = 0;
	var input = In.ar(0);
	DiskOut.ar(bufnum, input);
}).add;

~recBus1 = Bus.audio(s,1);
SynthDef(\AR1, { arg in=2;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus1, input);

}).add;
SynthDef(\AR1Diskout, {arg out= 0,bufnum;
	var input =In.ar(~recBus1.index);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;


/////////////////////////////////////////////////
~recBus2 = Bus.audio(s,1);
SynthDef(\AR2, { arg in=3;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus2, input);
}).add;
SynthDef(\AR2Diskout, {arg out = 0, bufnum;
	var input = In.ar(~recBus2.index);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

/////////////////////////////////////////////////
~recBus3 = Bus.audio(s,1);

SynthDef(\AR3, { arg  in=4;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus3, input);

}).add;
SynthDef(\AR3Diskout, {arg out=0,bufnum;
	var input =In.ar(~recBus3.index);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

/////////////////////////////////////////////////
~recBus4 = Bus.audio(s,1);

SynthDef(\AR4, { arg in=5;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus4, input);

}).add;
SynthDef(\AR4Diskout, {arg  out=0,bufnum;
	var input =In.ar(~recBus4.index);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

////////////////////////////////////////////////
~recBus5 = Bus.audio(s,1);

SynthDef(\AR5, { arg  in=6;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus5, input);


}).add;
SynthDef(\AR5Diskout, {arg out=0, bufnum;
	var input = In.ar(~recBus5);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

////////////////////////////////////////////////
0.2.wait;
~recBus6 = Bus.audio(s,1);

SynthDef(\AR6, { arg  in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus6, input);

}).add;
SynthDef(\AR6Diskout, {arg out=0,bufnum;
	var input =  In.ar(~recBus6);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

///////////////////////////////////////////////
0.2.wait;
~recBus7 = Bus.audio(s,1);

SynthDef(\AR7, { arg in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus7, input);

}).add;
SynthDef(\AR7Diskout, {arg out=0,bufnum;
	var input =In.ar(~recBus7);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

/////////////////////////////////////////////////////////////////////////////////
0.2.wait;
~recBus8 = Bus.audio(s,1);
SynthDef(\AR8, { arg in=9;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus8, input);

}).add;
SynthDef(\AR8Diskout, {arg  out=0,bufnum;
	var input = In.ar(~recBus8);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;
0.2.wait;






/////////////////////////////////////////////// /////////////////////////////
~gr1 = Group.new;
~gr2 = Group.new;
~gr3 = Group.new;
~gr4 = Group.new;
~gr5 = Group.new;
~gr6 = Group.new;
~gr7 = Group.new;
~gr8 = Group.new;
~ar1 = Synth(\AR1,~gr1);
~ar2 = Synth(\AR2,~gr2, addAction: \addToHead);
~ar3 = Synth(\AR3,~gr3);
~ar4 = Synth(\AR4,~gr4);
~ar5 = Synth(\AR5,~gr5);
~ar6 = Synth(\AR6,~gr6);
~ar7 = Synth(\AR7,~gr7);
~ar8 = Synth(\AR8,~gr8);
~bpm= TempoClock(100/60);
~metronome44 = TempoClock.new(~bpm, 0, Main.elapsedTime.ceil);
~metronome44.schedAbs(0, {~metronome44.beatsPerBar_(4)});
~metronome34 = TempoClock.new(~bpm , 0, Main.elapsedTime.ceil);
~metronome34.schedAbs(0, {~metronome34.beatsPerBar_(3)});


(
~test_DrumSmpl1 = 1;
~test_DrumSmpl2 = 1;
~test_DrumSmpl3 = 1;
~test_DrumSmpl4 = 1;
~test_DrumSmpl5 = 1;
~test_DrumSmpl6 = 1;
~test_DrumSmpl7 = 1;
~test_DrumSmpl8 = 1;
~test_Master= 1;
"multitrack.scd".loadRelative;
)
)