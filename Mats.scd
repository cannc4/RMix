
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////  RMX                    ///////////////////////
////////////////////////  Version 20             ///////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
(
 b = Bus.control(s, 1); b.set(880);
b.set(10000);
~pitchshift =Synth(\pitchshifter, [\ibs, ~recBus6], ~gr6);
~delayll2 = Synth(\delayll, [\ibs,~recBus2],~gr2);
~delayll8 = Synth(\delayll, [\ibs,~recBus8],~gr8);
~delayll6 = Synth(\delayll, [\ibs,~recBus6],~gr6);
~dubecho6 = Synth(\dubecho, [\ibs,~recBus6],~gr6);
~dubecho4 = Synth(\dubecho, [\ibs,~recBus4],~gr4);
~dubecho4.free
~dubecho2 = Synth(\dubecho, [\ibs,~recBus2],~gr2);
~dubecho2.set(\sep, 0.0000012);
~dubecho2.set(\fb, 1);
~dubecho2.set(\length, 0.5);
~dubecho2.set(\amp,5);
~dubecho8 = Synth(\dubecho, [\ibs,~recBus8],~gr8);
~dubecho8.set(\sep, 0.000012);
~dubecho8.set(\fb, 1);
~dubecho8.set(\length, 0.09);
~dubecho8.set(\amp,3);

~dubecho4.set(\sep, 0.000012);
~dubecho4.set(\fb, 1);
~dubecho4.set(\length, 0.1);
~dubecho4.set(\amp,10);
~
~dubecho4.free;
~dubecho6.set(\amp, 2, \length, 0.5, \fb, 0.50, \sep, 0.00012);
~delayll6.set(\freqLP,9000);
~delayll6.set(\delme,0.9);
~delayll6.set(\delFed,0.9);
~delayll6.set(\freqHP,5000);
~delayll6.free
~delayll7.free
~delayll8.free
~delayll6.free
~delayll7.set(\delFed,0.99 );
~delayll7.set(\dryWet, 0.5);
~delayll2.free

~delayll3 = Synth(\delayll, [\ibs,~recBus3],~gr3);
~delayll3.free
~delayll3.set(\freqLP, 10000);
~delayll3.set(\random, 10);
// ~freeze1= Synth(\freeze, [ \ibs, ~recBus1],~ar1, \addAfter);
~nReverb1 = Synth(\nReverb, [\ibs, ~recBus1], ~gr1);
~nReverb3 = Synth(\nReverb, [\ibs, ~recBus5], ~gr5);
~nReverb5.free
~nReverb1.free
~nReverb2.free
~nReverb3 = Synth(\nReverb, [\ibs, ~recBus3], ~gr3);
~nReverb3.free
~nReverb3.set(\freqHP, 2000);
~nReverb4 = Synth(\nReverb, [\ibs, ~recBus4], ~gr4);
~nReverb4.free
~nReverb6 = Synth(\nReverb, [\ibs, ~recBus6], ~gr6);
~nReverb6.free;
~freeze3= Synth(\freeze, [\ibs, ~recBus3], ~gr3);
~freeze3.free
~freeze2.free
~freeze2= Synth(\freeze, [\ibs, ~recBus2], ~gr2);
~freeze1= Synth(\freeze, [\ibs, ~recBus1], ~gr1);
~freeze1.free
~freeze6= Synth(\freeze, [\ibs, ~recBus6], ~gr6);
~freeze6.free
~freeze7= Synth(\freeze, [\ibs, ~recBus7], ~gr7);
~freeze7.free


~scene3.stop();
~scene3.play(~metronome44, protoEvent: Event.default, quant: Quant(1));
~scene3 = Task({
	var delta;

delta = rrand(0.1, 1) * 3;
loop{


		~delayll2= Synth(\delayll, [\ibs,~recBus2,\freqLP,2000],~gr2);
		0.2.wait;
		~nReverb1 = Synth(\nReverb, [\ibs, ~recBus1], ~gr1);
		delta.wait;
		~nReverb3 = Synth(\nReverb, [\ibs, ~recBus3], ~gr3);



delta.wait;
delta.yield;

		~delayll3.free;
		~delayll3 = Synth(\delayll, [\ibs,~recBus3,\freqLP,8000],~gr3);
				~dubecho2 = Synth(\dubecho, [\ibs,~recBus2],~gr2);
		delta.wait;
Pbindef(\track1sq, \dur,Pbjorklund2(3, 8, inf)/8 );
		Pbindef(\track2sq, \dur,Pbjorklund2(4, 8, inf)/8 );
		delta.wait;
Pbindef(\track3sq, \dur,Pbjorklund2(1, 8, inf)/8 );
~nReverb1.free;
~delayll3.free;
				~delayll6= Synth(\delayll, [\ibs,~recBus6,\freqLP,8000],~gr6);

		Pbindef(\track2sq, \dur,Pbjorklund2(5, 8, inf)/8 );
		delta.wait;
delta.yield;
		~dubecho2.free;
		~nReverb3.free;
		~delayll2.free;
		~nReverb3.free;
Pbindef(\track1sq, \dur,Pbjorklund2(3, 8, inf)/4);
Pbindef(\track2sq, \dur,Pbjorklund2(4, 8, inf)/4 );
Pbindef(\track3sq, \dur,Pbjorklund2(5, 8, inf,4)/4);
			~dubecho3 = Synth(\dubecho, [\ibs,~recBus3],~gr3);
Pbindef(\track4sq, \dur,Pbjorklund2(21, 32, inf)/4);

		5.wait;
		~delayll2= Synth(\delayll, [\ibs,~recBus2,\freqLP,500],~gr2);
		1.wait;
		~dubecho3.free;
		~delayll2.free;
		~nReverb1.free;
		~nReverb3.free;
		~delayll6.free;
		~delayll3.free;
		1.wait;
	}



});


~ringMod = Synth(\ringMod, [\ibs, ~recBus1],~gr1);
~ringMod3= Synth(\ringMod, [\ibs, ~recBus3],~gr3);
~ringMod3.set(\freq, 0.0001);
~ringMod3.free;
~delayll2 = Synth(\delayll, [\ibs,~recBus2],~gr2);
~delayll7.set(\delFed, 0.1);
~nReverb2 = Synth(\nReverb, [\ibs, ~recBus2], ~gr2);
~nReverb7 = Synth(\nReverb, [\ibs, ~recBus7], ~gr7);
~nReverb8 = Synth(\nReverb, [\ibs, ~recBus8],~ar8);
~blipDelay6= Synth(\blipDelay, [\ibs, ~recBus6],~gr6);
~blipDelay6.free;
~blipDelay4= Synth(\blipDelay, [\ibs, ~recBus4],~gr4);

~blipDelay8.free
~nReverb7.release;
~nReverb4.free;
~nReverb2.free
~nReverb8.free;
~freeze1.release
~dubecho3.free
~dubecho3= Synth(\dubecho, [\ibs, ~recBus3],~gr3);
~dubecho3.set(\sep, 0.000012);
~dubecho3.set(\fb, 1.2);
~dubecho3.set(\length, 0.0002);
~dubecho3.set(\amp,30);
~ar1.set(\out,0);
~ar7.moveBefore(~a);
~delayll7.moveBefore(~ar7);
~nReverb1.moveBefore(~ar1);
~nReverb1.free;
~freeze2.moveBefore(~ar2);
(~ar1).moveBefore;
~ar2.moveBefore(~nReverb2);
~ar7.moveBefore(~nReverb7);
~nReverb3.set(\decay, );
~nReverb.set(\random, 0.9);
~nReverb2.set(\maxDelay, 100000);
~nReverb2.free
~ar1.moveBefore(~nReverb);
~ringMod.set(addAction: \addToTail);
~ringMod.free
~echo = Synth(\dubecho, [\amp, 2, \ibs, ~b4, \obs , 0,  \length, TempoClock.default.tempo*(3/8), \fb, 0.7, \sep, 0.0012],addAction: \addToTail);
~grain = Synth(\granular_sampling);
~tc = TempoClock(1.5);

)
~grainBuf = Buffer.readChannel(s,"/Users/canince/Desktop/Rudeboy_247Long.wav", channels: [0]);
~tempos = [120/160, 160/60];
~tc = TempoClock(2);
~tc = TempoClock(3.2);
s.plotTree


// ~reverb= Synth(\reverb2, [ \ibs, ~b2, \obs , 0,  \delaytime,1, \decaytime, 1, \amp, 1],addAction: \addToTail);
// ~reverb2= Synth(\reverb, [ \ibs, ~b3, \obs , 0,  \revtime,1.8, \mix, 1, \amp, 1],addAction: \addToTail);

// ~recbuf= Synth.new(\RecordBuf, [\inbus, ~b7, \bufnum, b]);	//set a buffer as default
// ~playback = Synth(\playback, [\bufnum, 0, \atk , 0.01, \rel, 0.1 ]);

//RECORD//

//CLOSE//
(
pattern = Pbind(
		\dur, 0.1,
		\degree, Pseq([0,1,2,3,4,5,6,7])
);

Pstretchp(
	Pseq([1,2,3], inf), 	// a value pattern as a source of values for multiplying with stretch
	pattern				// the pattern to be modified
).play
)


s.queryAllNodes
//
// (
// SynthDef(\recBuf,{ arg out=0, bufnum=0;
// 	var in;
// 	in= ~b1;
// 	RecordBuf.ar(in, bufnum);
// }).load(s);
// )
// (
// x = Synth(\recBuf, [\out, 0, \bufnum, ~granularBuffer.bufnum]);
// x.free;
// SynthDescLib.global.read;
// SynthDescLib.global.browse;
// )
Pbindef(\track1sq, \dur,Pbjorklund2(7, 16, inf)/8 );
Pbindef(\track1sq, \amp, 1 );
Pbindef(\track2sq, \dur,Pbjorklund2(4, 16, inf)/8 );
Pbindef(\track3sq, \dur,Pbjorklund2(3, 8, inf)/8 );
Pbindef(\track3sq, \dur,Pbjorklund2(8, 8, inf)/8 );
Pbindef(\track2sq, \dur,Pbjorklund2(Pseq([7, 14], inf), 32, inf)/8);
Pbindef(\track2sq, \dur,Pbjorklund2(Pseq([4, 6], inf), 16, inf)/8);

Pbindef(\track1sq, \dur,Pbjorklund2(Pseq([7, 7, 14], inf), 32, inf, 10)/8);
/*\amp, Pseq([0.2, 0.15, 0.1, 0.05, 0],
inf)*/
// \degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14],
// \dur, Pseq([4, [5,2,1]].convertRhythm / 2, inf),
// \strum, Pwhite(0,1/8,inf),
// \octave, [5,6]
//Pseries(0, 1, 8),
//Pseq([Pseq([100, 200, 300], 2), 400, 500, 600],inf)~tc = 0.1;
//Pseq([Pseq([100, 200, 300], 2), 400, 500, 600],inf)

//PdurStutter
Pbindef(\track3sq, \dur,Pbjorklund2(17, 32, inf)/8);
"multitrackclose.scd".loadRelative;
~freeze7.free
Pbindef(\track2sq, \dur,Pbjorklund2(3, 8, inf)/8);
Pbindef(\track1sq, \dur,Pbjorklund2(2, 8, inf)/8);
Pbindef(\track3sq, \dur,Pbjorklund2(1, 8, inf)/8 );
Pbindef(\track2sq,\degree,Pseq([-0.2,0.2], inf));
Pbindef(\track2sq,\amp,Pseq([1,0.6], inf));
Pbindef(\track3sq, \dur,Pbjorklund2(2, 8, inf)/4);
Pbindef(\track3sq,\degree,Pseq([-0.2,0.2,0.5], inf));
Pbindef(\track3sq,\amp,Pseq([1.5,1.1], inf));
Pbindef(\track4sq, \dur,Pbjorklund2(21, 32, inf)/8);
Pbindef(\track4sq, \dur,Pbjorklund2(5, 8, inf)/8);
Pbindef(\track4sq, \degree,Pseq([-0.2,0.2,-0.4], inf));
Pbindef(\track5sq, \dur,Pbjorklund2(1, 8, inf)/4);
Pbindef(\track5sq,\degree,Pseq([-0.4,0.2], inf));
Pbindef(\track6sq, \dur,Pbjorklund2(3, 16, inf)/4);
Pbindef(\track6sq, \dur,Pbjorklund2(6, 8, inf)/4 );
Pbindef(\track6sq,\degree,Pseq([0.6,0.8,0,2,-0.2], inf));
Pbindef(\track7sq, \dur,Pbjorklund2(10, 16, inf)/8 );
Pbindef(\track7sq, \dur,Pbjorklund2(11, 16, inf)/4 );
Pbindef(\track7sq,\degree,Pseq([-0.4,0.2], inf));
Pbindef(\track7sq,\degree, Pseg(Pseq([0.2,0.1,0.25,0.2,-0.4],inf) ));///////
Pbindef(\track8sq, \dur,Pbjorklund2(16, 16, inf)/8 );
Pbindef(\track8samplepr1,\control, Pseq([30,51,0,], inf) );
Pbindef(\track8samplepr1).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track9sq, \dur,Pbjorklund2(8, 16, inf)/16 );
Pbindef(\track10sq, \dur,Pbjorklund2(7, 16, inf)/16);
Pbindef(\track11sq, \dur,Pbjorklund2(3,8, inf)/8 );
Pbindef(\track12sq, \dur,Pbjorklund2(1, 32, inf)/8 );
Pbindef(\track1sq).play(~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track2sq).play(~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track3sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track4sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track5sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track6sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track7sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track8sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track9sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track10sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track11sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track12sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));




Pbindef(\track4samplepr5,\control, Pseq([30,51,53,45], inf) );


Pbindef(\track9sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(3));
Pbindef(\track9sq, \dur, Pseq([2,[1,2,1,4,2]].convertRhythm/, inf));

z = Buffer.sendCollection(s, Env.perc.discretize, 1);
k = Buffer.sendCollection(s, Env.sine.discretize, 1);
//////
Pbindef(\granular2).stop
Pbindef(\granular1).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\granular2).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\granular3).play(clock: ~metronome34, protoEvent: Event.default, quant: Quant(4));
Pbindef(\granular2, \amp, Pseq([1, [4,2,4]/4], inf));
Pbindef(\granular2, \graindur, Pseq([1, [100,1,1]].convertRhythm / 4, inf));
Pbindef(\granular2, \transp, Pseq([10, [20,1,2]].convertRhythm / 4, inf));
Pbindef(\granular2,\transp, Pseq([1,-12],inf));
Pbindef(\granular1, \pos, Pseq([2, 0, 0, 0], inf));
Pbindef(\granular1,\envbuf,k);
///
Pbindef(\track1sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(4));
Pbindef(\track1sq).stop;
Pbindef(\track1sq,\degree,Pseq([-0.4,-0.2], inf));
Pbindef(\track1sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track1sq, \amp, Pseq([1,0.5,0,1,0.5], inf));
Pbindef(\track1sq, \amp, Pn([0,0.9,0,1,1], inf));
Pbindef(\track1sq, \dur, Pseq([Pfunc({~tc* 0.2}),Pfunc({~tc* 0.4})],inf));
Pbindef(\track1sq, \dur, Pseq([Pseq(~tempos, 2),inf],inf));
Pbindef(\track1sq, \dur,  Pbjorklund2(3, 8, inf)/2 );
Pbindef(\track1sq,\dur,  Pseg(Pseq([~tc*0.25,~tc*0.2,~tc*0.25],inf)));
Pbindef(\track1sq,\dur,  Pseg(Pseq([~tc*0.25,~tc*0.2,~tc*0.25],inf)));
Pbindef(\track1sq, \dur, Pclutch(Pwhite(~tc, ~tc*0.25, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track1sq,\dur,Pfunc({ ~tc }));
Pbindef(\track1sq,\dur, Pseq([1, [2,2,2.5]].convertRhythm / 4 , inf));//////////////
Pbindef(\track1sq, \amp, Pseq([0.8, 0.5]*10,inf));///////////////
Pbindef(\track1sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04],inf) ));///////
Pbindef(\track3samplepr8,\control, Pseq([120,0,125,0,120,0], inf) );
Pbindef(\track1samplepr1,\control,Pclutch(Pwhite(12, -12, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track1samplepr1,\control, Pseq([Pseq([12, -12, 0], 12), -12, 12],inf));
Pbindef(\track1samplepr1,\dur, 0.0);
Pbindef(\track1samplepr7).stop;
Pbindef(\track1samplepr8).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));

Pbindef(\track1sq).play(~tc);
Pbindef(\track8sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track12sq).play(clock: ~metronome34, protoEvent: Event.default, quant: Quant(3));
Pbindef(\track2sq).play(clock: ~metronome34, protoEvent: Event.default, quant: Quant(2));
//
Pbindef(\track2sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track2sq, \amp, Pwhite(0.4,1.1));
Pbindef(\track2sq, \dur, Pseq([Pseq([1/16], 15), Pseq([1/64, 1/64, 1/32], 1)], inf) * 3);
Pbindef(\track2sq, \degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14]);
Pbindef(\track2sq, \dur, Pbjorklund2(3, 8, inf)/2);
Pbindef(\track2sq, \amp, Pseq([4, [5,2,2]].convertRhythm / 2, inf));
Pbindef(\track2sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,0.8],inf) ));//
Pbindef(\track2sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,0.8],inf) ));////////////////////
Pbindef(\track2sq, \dur, Pseq([2,[1,2]].convertRhythm/2, inf));
Pbindef(\track2sq, \dur, Pseq([0.1,0.08,0.07,0.12,0.05]*2, inf));
Pbindef(\track2sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2/10,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.2,0.05,0.15,0.1,0.2],inf) ));///////
Pbindef(\track2sq,\dur, Pseq([1, [4,1,4]].convertRhythm / 8, inf));////////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08],inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04].convertRhythm/2,inf) ));///////
Pbindef(\track2sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

Pbindef(\track2sq,\dur, Pseg(Pseq([0.1,0.4,0.4,0.1,0.4],inf) ));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(0.7, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(~tc*0.4, ~tc*0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq,\dur, Pseq([0.1,0.02,0.05,0.2],inf));
Pbindef(\track2sq,\amp, Pseq([0.7,0.2,0.9,0.1]*2,inf));
Pbindef(\track3samplepr8).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track2samplepr8,\control, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08]*100,inf) ));


Pbindef(\track3sq, \dur,Pbjorklund2(3, 8, inf)/2 );
Pbindef(\track3sq).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track3sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track3sq, \amp, Pn([1,0,1,0,1], inf));
Pbindef(\track3sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track3sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track3sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,1.3],inf) ));
Pbindef(\track3sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track3sq, \dur, Pseq([0.1,0.1,0.1,0.1,0.1]*2, inf));
Pbindef(\track3sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track3sq, \dur, Pclutch(Pwhite(0.2, 0.9, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track3sq, \dur, Pclutch(Pwhite(0.4, 0.45, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track3sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track3sq, \degree,Pseq([[100, 200, 300], [160,
	240, 320, 500], [400, 500, 600, 450, 350, 250]], inf));
Pbindef(\track3sq, \strum, 1/3);
Pbindef(\track3sq, \legato, 0.2);
Pbindef(\track3sq, \amp, Pseq([0.2, 0.15, 0.1, 0.05, 0],
	inf);)
Pbindef(\track3samplepr4).stop();
Pbindef(\track3samplepr8,\control, Pseq([60,0,125,0,90,10], inf) );
Pbindef(\track3samplepr5,\control,Pseq([Pseq([100, 200, 300], 2), 400, 500, 600],inf));

Pbindef(\track4sq).play();
Pbindef(\track4sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track4sq,\dur, Pseg(Pseq([0.2,0.4,0.25,0.7,0.2,0.4]*2,inf) ));///////
Pbindef(\track4sq,\degree, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track4sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track4sq, \amp, Pn([1,0,1,0,1], inf));
Pbindef(\track4sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track4sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track4sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track4sq, \dur, Pseq([0.1,0.1,0.1,0.1,0.1]*2, inf));
Pbindef(\track4sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track4sq,\degree, Pseg(Pseq([0.1,00.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pclutch(Pwhite(0.2, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track4sq, \degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14]);
Pbindef(\track4sq, \degree,Pseq([[100, 200, 300], [160,
	240, 320, 500], [400, 500, 600, 450, 350, 250]], inf));
Pbindef(\track4sq, \strum, 1/3);
Pbindef(\track4sq, \legato, 0.2);
Pbindef(\track4sq, \amp, Pseq([0.2, 0.15, 0.1, 0.05, 0],
	inf);)
Pbindef(\track4sq,\dur,  Pseq([4, [5,2,1]].convertRhythm / 2, inf));
Pbindef(\track4samplepr8).play();
Pbindef(\track4samplepr5,\control, Pseq([120,0,125,0,120,0], inf) );
Pbindef(\track4synthpr2,\control,Pclutch(Pwhite(120, 100, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track4synthpr5).play();


Pbindef(\track5sq).play(~tc);
Pbindef(\track5sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track5sq, \amp, Pn([1,0,1,0,1], inf));
Pbindef(\track5sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track4sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track4sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track5sq, \dur, Pseq([0.1,0.1,0.1,0.1,0.1]*2, inf));
Pbindef(\track4sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track4sq,\degree, Pseg(Pseq([0.1,0.4,10,0.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pclutch(Pwhite(0.2, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track5sq, \degree, Pclutch(Pwhite(0.4, 0.45, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track4sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track4samplepr8).play();
Pbindef(\track4synthpr2,\control, Pseq([120,0,125,0,120,0], inf) );


Pbindef(\track5synthpr2,\control,Pclutch(Pwhite(120, 100, inf), Pdiff(Pkey(\dur)).abs > 0));

Pbindef(\track5samplepr8,\control,Pclutch(Pwhite(120, 80, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track5samplepr8).play();

Pbindef(\track9sq, \amp, Pseq([1,2,3], inf));
Pbindef(\track2sq, \amp, Pwhite(0.4,1.1));
Pbindef(\track2sq, \dur, Pseq([Pseq([1/16], 15), Pseq([1/64, 1/64, 1/32], 1)], inf) * 3);
Pbindef(\track2sq, \degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14]);
Pbindef(\track2sq, \dur, Pseq([(~tc* 0.2),(~tc)],inf));
Pbindef(\track9sq, \dur,  Pseq([1, 1, 1, 1], inf) * 1/2);
Pbindef(\track2sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,0.8],inf) ));//
Pbindef(\track2sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,0.8],inf) ));////////////////////
Pbindef(\track2sq, \dur, Pseq([0.6,0.5,0.05,0.0.9,0.1], inf));
Pbindef(\track2sq, \dur, Pseq([0.1,0.08,0.07,0.12,0.05]*2, inf));
Pbindef(\track2sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2/10,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.2,0.05,0.15,0.1,0.2],inf) ));///////
Pbindef(\track8sq,\dur, Pseq([3.5, [2,1,2]].convertRhythm / 2, inf));////////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08],inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04],inf) ));///////
Pbindef(\track2sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

Pbindef(\track9sq,\dur, Pseg(Pseq([0.1,0.4,0.4,0.1,0.4],inf) ));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(0.7, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(~tc*0.4, ~tc*0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq,\dur, Pseq([0.1,0.02,0.05,0.2],inf));
Pbindef(\track2sq,\amp, Pseq([0.7,0.2,0.9,0.1]*2,inf));
Pbindef(\track2samplepr8).play(~tc);
Pbindef(\track2samplepr8,\control, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08]*100,inf) ));


Pbindef(\track1sq).play(~tc);
Pbindef(\track6sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track5sq, \amp, Pn([1,0,1,0,1], inf));
Pbindef(\track6sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track4sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track4sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track5sq, \dur, Pseq([0.1,0.1,0.1,0.1,0.1]*2, inf));
Pbindef(\track6sq, \dur, Pseq([0.9,0,1, 0.001,5,9], inf));
Pbindef(\track6sq,\dur, Pseg(Pseq([0.1,0.4,10,0.9,1.3],inf) ));
Pbindef(\track4sq, \dur, Pclutch(Pwhite(0.2, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track6sq, \dur, Pclutch(Pwhite(0.1, 0.2, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track6sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track4samplepr8).play();
Pbindef(\track4synthpr2,\control,Pbjorklund2(11, 16, inf)/2  );
Pbindef(\track5synthpr2,\control,Pclutch(Pwhite(120, 100, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track5samplepr1,\control,Pclutch(Pwhite(120, 80, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track5samplepr1).play();

Pbindef(\track9sq).stop(~tc);
Pbindef(\track11sq).stop;
Pbindef(\track10sq).play(~tc);
Pbindef(\track10sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04],inf) ));///////
Pbindef(\track10sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

Pbindef(\track11sq,\dur, Pseg(Pseq([100,80,40,20,5]/400, inf) ));
Pbindef(\track11sq, \dur, Pclutch(Pwhite(0.1, 0.4, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track11sq,\degree, Pstutter(Pwhite(-15, -20, inf), Pwhite(-10, -20, inf)));
Pbindef(\track11sq,\dur, 0.5);
Pbindef(\track11sq).stop();
Pbindef(\track11sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track11sq, \amp, Pn([1,0,1,0,1], inf));
Pbindef(\track11sq, \dur, Pfunc({~tc* 0.2}));
Pbindef(\track11sq, \dur, Pseq([(~tc* 0.2),(~tc)],inf));
Pbindef(\track11sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track11sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track11sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,1.3],inf) ));
Pbindef(\track10sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track11sq, \dur, Pseq([0.1,0.1,0.1,0.1,0.1]*2, inf));
Pbindef(\track11sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track11sq,\degree, Pseg(Pseq([0.1,0.4,2,0.9,1.3],inf) ));
Pbindef(\track11sq,\dur, Pseg(Pseq([0.1,0.4,0.4,0.1,0.4],inf) ));
Pbindef(\track10sq, \dur, Pclutch(Pwhite(0.2, 0.02, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track11sq, \dur, Pclutch(Pwhite(~tc*0.4, ~tc*0.45, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track10sq,\dur, 0.5);


Pbindef(\track5sq).play(~tc);
Pbindef(\track5sq, \degree,Pseq([[100, 200, 300], [160,
	240, 320, 500], [400, 500, 600, 450, 350, 250]], inf));
Pbindef(\track5sq, \strum, 1/3);
Pbindef(\track12sq, \legato, 0.2);
Pbindef(\track5sq, \amp, Pseq([0.2, 0.15, 0.1, 0.05, 0],
	inf);)
Pbindef(\track11synthpr1).stop;
Pbindef(\track12synthpr3,\control, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*100,inf)) );

Pbindef(\track12sq).stop(~tc);
Pbindef(\track11sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
Pbindef(\track11sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2,inf) ));

Pbindef(\track1synthpr2).stop
Pbindef(\track1synthpr1).play(~tc);


Pbindef(\track3synthpr5).play(~tc);
Pbindef(\track9samplepr8).play(~tc);


~list = [0.8,0.3,0.5,10]/10;
l = Pseq(~list);
m = Pwhite(20, 40, 5);
n = Pseries(-10, 0.324);
Pbindef(\track4samplepr7).play
Pbindef(\track4synthpr2).stop;
Pbindef(\track9samplepr2).stop
Pbindef(\track2synthpr4,\control, Pseg(Pseq([2,100], inf) ));

Pbindef(\track1synthpr1,\control, Pseq([100,50,127,127,120], inf) );
Pbindef(\track9samplepr8,\control, Pseg(Pseq([0,110,90,0], inf) ));
Pbindef(\track1samplepr3,\control, Pseg(Pseq([60,76 ,90,10,110], inf) ));

Pbindef(\track2sq).stop;
Pbindef(\track3sq).play;
Pbindef(\track3sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track10sq,\dur, Pseq([0.2,0.2,0.4,0.3],inf));
Pbindef(\track1sq,\dur, Pseg(Pseq([0.4,0.6,0.7,0.2],inf)));
Pbindef(\track4sq,\dur, 0.1);

l.stop
Pbindef(\track10sq,\degree, Pseg(Pseq([-0.5, 0.5], inf)));
Pbindef(\track2sq,\degree, Pseg(Pseq([0.1,0.4,0.7,0.9,1.3],inf) ));
Pbindef(\track2sq,\degree, Pgeom(0.1,1.3,inf) );
Pbindef(\track10,\dur, Pseg(Pseq([10,80,127,10,50]/50, inf) ));
Pbindef(\track2sq,\dur, Pstutter(Pwhite(2,2,inf), Pwhite(0.1, 0.4, inf)));
Pbindef(\track2sq,\degree, Pstutter(Pwhite(-0, 2, inf), Pwhite(-1, 2, inf)));
Pbindef(\track2sq,\degree,Pswitch([Pwhite(7, 14, inf), Pwhite(-7, 0, inf)], Pfunc { 0.7.coin.binaryValue }));







////////////////FX PARAMS////////////////


~ringMod.set(\carrFreq, 200);
~ringMod.set(\carrFreq, 1);
~ringMod.set(\which, 0);
(
~delayll3.set( \out, 0, \gate, 1, \freqHP, 2000,\freqLP, 1000, \filtRes, 0.2 ,\delme, 0.2, \delRes, 0.2 ,\delRez, 2, \delFlt, 2000,\delTim , 0.5 ,\delFed , 0.9 ,\lfoFrq , 10, \lfoAmt , 2, \dryWet , 1 , \lagKarme , 0.2);


~delayll3.set( \out, 0, \gate, 1, \freqHP, 2000,\freqLP, 8000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 6000,\delTim , 0.2 ,\delFed , 2 ,\lfoFrq , 1, \lfoAmt , 1, \dryWet , 1 , \lagKarme , 0.2);



~delayll3.set( \out, 0, \gate, 1, \freqHP, 10,\freqLP, 8000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 60000,\delTim , 1.5 ,\delFed , 1.5 ,\lfoFrq , 1000, \lfoAmt , 0.4, \dryWet , 1 , \lagKarme , 0.5);


)
~playback.set(\obs, 0);
~echo.set(\amp, 5, \length, 6, \fb, 0.8, \sep, 0.0012);
~echo.set(\amp, 15, \length, 0.5, \fb, 0.9, \sep, 0.002);

~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
~echo.set(\amp, 10, \length, 0.1, \fb, 0.2, \sep, 0.012);
~feedbackDelay.set(\mix, 0.5, \feedback, 0.5);
~echo.set(\amp, 30, \length, 0.001, \fb, 0.8, \sep, 0.0012);
~freeze.set(\out,~recBus1);
//8192
~freeze.set(\bufSize,2);
~reverb2.set(\obs, ~b4);
~flang.set(\amp, 10,\delay, 0.1, \depth,0.5, \rate, 0.1, \fdbk, 0.1, \decay, 0.19);
//~chorus.set(\amp, 5);
~ech.set(\amp, 2,\maxdtime, 0.5, \dtime, 0.2, \decay, 0.5);
~freeverb.set(\amp,15);
~stutter.set(\amp,50);
~stutter.set(\trig,0.9);
~stutter.set(\sample, 7000);
~echo.set( \ibs, ~b1, \obs, 0);
~pcase.set(\ibs, ~b2, \obs, 0);
~rev.set(\ibs, ~b3, \obs, 0);
~flang.set(\ibs, ~b4, \obs, 0);
//~chorus.set(\ibs, ~b4, \obs, 0);
~freeverb.set(\ibs, ~b5, \obs, 0);

~echo.free;
~pcase.free;
~rev.free;
~flang.free;
//~chorus.free;
~freeberb.free;
~flangSeq.play;
~flangSeq.stop;



///////////////////////////////////////// Sequences ////////////////////////////////////////////////
(
~scene1 = Task({
	var delta;
	loop {
		delta = rrand(0, 4);
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.95,0.1,0.08]*2,inf) ));///////
		delta.wait;
		Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));

		4.wait;
		~ar2.set(\out,~b2);
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
		~ar1.set(\out, ~b1);
		2.wait;

		Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
		~ar2.set(\out,0);
		4.wait;
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track2sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

		2.wait;
		~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		~ar1.set(\out,~b1);


		~echo.set(\amp, 5, \length, 0.5, \fb, 0.9, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		~ar1.set(\out,0);
Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08]*2,inf) ));///////
		~ar1.set(\out, ~b1);
		4.wait;
				~ar1.set(\out, 0);
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
		~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012);
		8.wait;
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2,inf) ));///////




	}

});
)


~scene1.play(~tc);

~scene2.stop;





(
~scene2 = Task({
	var delta;
	loop {
		delta = rrand(0, 4);
		Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.95,0.1,0.08]*2,inf) ));///////
		delta.wait;
		Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));

		4.wait;
		~ar4.set(\out,~b2);
		Pbindef(\track4sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
		~ar7.set(\out, ~b1);
		2.wait;

		Pbindef(\track4sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
		~ar8.set(\out,0);
		4.wait;
		Pbindef(\track4sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track2sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

		2.wait;
		~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		~ar8.set(\out,~b1);


		~echo.set(\amp, 5, \length, 0.5, \fb, 0.9, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		~ar7.set(\out,0);
Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08]*2,inf) ));///////
		~ar2.set(\out, ~b1);
		4.wait;
				~ar8.set(\out, 0);
		Pbindef(\track11sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
		~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012);
		8.wait;
		Pbindef(\track11sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2,inf) ));///////




	}

});
)

~scene2.play(~tc);








(
t = Task({
	var delta;
	loop {
		delta = rrand(0.1, 1) * 0.3;
		~ar1.set(\out, 0);
		//		~echo.set(\amp, 20,\length, delta/20, \fb, delta/2, \sep, delta/2);
		~ar2.set(\out, 0);
		~ar4.set(\out, ~b1);



		Pbindef(\track4synthpr5).play;
		1.wait;

		Pbindef(\track4samplepr7).play;
		Pbindef(\track4samplepr8).stop;
		Pbindef(\track2synthpr4,\control, Pseg(Pseq([2,100], inf) ));
		Pbindef(\track4samplepr7,\control, Pseg(Pseq([80,120,40,20,100], inf) ));
		4.wait;
		delta = rrand(0.1, 2) * 0.3;
		//~rev.set(\amp, delta,\delaytime, delta, \decaytime, delta/2);
		~ar3.set(\out,~b1);
		Pbindef(\track2synthpr2).play;
		Pbindef(\track2synthpr2).play;
		Pbindef(\track1synthpr3).play;
		Pbindef(\track4synthpr8).stop;
		Pbindef(\track4synthpr5).stop;
		1.wait;
		Pbindef(\track4samplepr5).stop;
		Pbindef(\track2samplepr7).play;
		Pbindef(\track4samplepr8).stop;
		Pbindef(\track2synthpr4,\control, Pseg(Pseq([2,100], inf) ));
		Pbindef(\track4samplepr7,\control, Pseg(Pseq([80,120,40,20,100], inf) ));
		~echo.set(\amp, 10,\length, delta/10, \fb, delta/3, \sep, delta/1000);
		~ar2.set(\out,~b1);
		~ar3.set(\out, ~b1);
	}

});
)

~freeze.set(\freq, 1);
~freeze.set(\freq,100);

~fftComp = Task({
	var delta;
	loop {

		delta=rrand(1,3);

		~freeze.set(\freq, 1);
		1.wait;
		~freeze.set(\freq, 2);
		2.wait;
		~freeze.set(\freq, 8);
		4.wait;
		if(delta>1.5){

			~freeze.set(\freq,1);

		}{
			~freeze.set(\freq,5, \bufSize, 64);

		};
		2.wait;
	}
});

~fftComp.play(~tc);
~fftComp.stop;
~snaredel = Task({
	var delta;
	loop {

		delta = rrand(1, 5);
		if(2>delta){
			~ar7.set(\out, ~b4);
			~ar2.set(\out,0);
			~ar4.set(\out, 0);
			~freeze.set(\freq, 1);
			~freeze.set(\freq, 120);
									~freeze.set(\freq, 10);
									~freeze.set(\freq, 40);
									~freeze.set(\freq, -2);
									~freeze.set(\freq, 40);

	}{
			~ar2.set(\out,~b4);
						~ar7.set(\out, ~b4);
									~ar4.set(\out, ~b4);
						~freeze.set(\freq, 50);
									~freeze.set(\freq, 50);
									~freeze.set(\freq, 9);
									~freeze.set(\freq, 12);
									~freeze.set(\freq, 40);
			~freeze.set(\freq, 60);
									~freeze.set(\freq, 20);
	};

		0.1.wait;


}
});

~snaredel.play(~tc);
~snaredel.stop
~hatdel = Task({
	var delta;
	loop {

		delta = rrand(1, 3);
		if(2>delta){

			~ar7.set(\out,~b1);

	}{
			~ar7.set(\out,0);

	};
		1.wait;
		if(delta > 2){
			~echo.set(\amp, 12, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		}{

			~echo.set(\amp, 10, \length, 0.5, \fb, 0.20, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
		};

		1.wait;


}
});
~hatdel.play(~tc);
~hatdel.stop;

~cpdel = Task({
	var delta;
	loop {

		delta = rrand(1, 3);
		if(2>delta){

			~ar3.set(\out,~b4);
						~ar7.set(\out,~b4);
														~ar2.set(\out, 0);

	}{
			~ar3.set(\out,0);
											~ar2.set(\out, 0);

	};
		0.5.wait;
		if(delta > 1.5){
			~echo.set(\amp, 15, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY
					~ar1.set(\out, ~b4);
											~ar2.set(\out, ~b4);
		}{

			~echo.set(\amp, 10, \length, 0.5, \fb, 0.20, \sep, 0.000012); // ULTIMATE DELAY
								~ar1.set(\out, 0);
								~ar2.set(\out, ~b4);
									~ar7.set(\out,0);
		};

		0.2.wait;


}
});
~cpdel.play(~tc);
~cpdel.stop
(
l = Task({
	var delta;
	loop {
		delta = rrand(0.1, 1) * 0.3;

		~ar4.set(\out, ~b1);
		4.wait;
		delta = rrand(0.1, 2) * 0.3;
				~ar4.set(\out, 0);
	~echo.set(\amp, 25, \length, 6, \fb, 0.8, \sep, 0.0012);
~echo.set(\amp, 25, \length, 0.2, \fb, delta, \sep, 0.002);
~echo.set(\amp, 35, \length, 0.5, \fb, 0.50, \sep, 0.00012);
~echo.set(\amp, 20, \length, 0.1, \fb, 0.2, \sep, 0.012);
		~ar1.set(\out, ~b4);
		~ar4.set(\out, ~b4);
		2.wait;
		delta.yield;
	}
}).play;
)
l.stop

////////////////////////////////////////////////////////////////////////////////////////////////

