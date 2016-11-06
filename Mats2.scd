Pbindef(\track1sq, \dur,Pbjorklund2(3, 8, inf)/4);
Pbindef(\track2sq, \dur,Pbjorklund2(2, 8, inf)/4 );
Pbindef(\track3sq, \dur,Pbjorklund2(6, 8, inf)/4);
Pbindef(\track3sq, \degree,Pseq([0.2,0.6],inf));
Pbindef(\track3sq, \degree,Pseg(Pseq([0.1,-0.2],inf)));
Pbindef(\track3sq, \degree,Pseg(Pseq([0.4,-0.2],inf)));
Pbindef(\track4sq, \dur,Pbjorklund2(21, 32, inf)/4);
Pbindef(\track4sq, \dur,Pbjorklund2(1, 8, inf)/4);
Pbindef(\track5sq, \dur,Pbjorklund2(4, 8, inf)/4);
Pbindef(\track5sq,\degree,Pseq([-0.4,0.2], inf));
Pbindef(\track6sq, \dur,Pbjorklund2(3, 8, inf)/4 );
Pbindef(\track6sq, \dur,Pbjorklund2(5, 8, inf)/4 );
Pbindef(\track6sq,\degree,Pseq([0.6,0.8,0,2,-0.2], inf));
Pbindef(\track7sq, \dur,Pbjorklund2(23, 32, inf)/4 );
Pbindef(\track7sq,\degree,Pseq([-0.4,0.2], inf));
Pbindef(\track7sq,\degree, Pseg(Pseq([0.2,0.1,0.25,0.2,-0.4],inf) ));///////
Pbindef(\track8sq, \dur,Pbjorklund2(5, 8, inf)/8 );
Pbindef(\track8samplepr1,\control, Pseq([30,51,0,], inf) );
Pbindef(\track8samplepr1).play(clock: ~metronome44, protoEvent: Event.default, quant: Quant(1));
Pbindef(\track9sq, \dur,Pbjorklund2(2, 8, inf)/4 );
Pbindef(\track10sq, \dur,Pbjorklund2(5, 8, inf)/4);
Pbindef(\track11sq, \dur,Pbjorklund2(6,8, inf)/8 );
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



Pbindef(\track1sq, \dur,Pbjorklund2(7, 16, inf)/8 );
Pbindef(\track1sq, \amp, 1 );
Pbindef(\track2sq, \dur,Pbjorklund2(4, 16, inf)/8 );
Pbindef(\track3sq, \dur,Pbjorklund2(3, 8, inf)/8 );
Pbindef(\track3sq, \dur,Pbjorklund2(8, 8, inf)/8 );
Pbindef(\track2sq, \dur,Pbjorklund2(Pseq([7, 14], inf), 32, inf)/8);
Pbindef(\track2sq, \dur,Pbjorklund2(Pseq([4, 6], inf), 16, inf)/8);

Pbindef(\track1sq, \dur,Pbjorklund2(Pseq([7, 7, 14], inf), 32, inf, 10)/8);

~delayll2 = Synth(\delayll, [\ibs,~recBus2],~gr2);
~delayll3 = Synth(\delayll, [\ibs,~recBus3],~gr3);
~delayll3 .free
~delayll8 = Synth(\delayll, [\ibs,~recBus8],~gr8);
~delayll8.free
~delayll6 = Synth(\delayll, [\ibs,~recBus6],~gr6);
~dubecho6 = Synth(\dubecho, [\ibs,~recBus6],~gr6);
~dubecho4 = Synth(\dubecho, [\ibs,~recBus4],~gr4);
~dubecho4.free;
~dubecho8 = Synth(\dubecho, [\ibs,~recBus8],~gr8);
~dubecho7 = Synth(\dubecho, [\ibs,~recBus7],~gr7);
~dubecho4.set(\amp, 2, \length, 0.5, \fb, 0.50, \sep, 0.00012);
~dubecho4.free;
~dubecho7.set(\amp, 2, \length, 0.5, \fb, 0.50, \sep, 0.00012);
~dubecho6.free
~dubecho3 = Synth(\dubecho, [\ibs,~recBus3],~gr3);
~dubecho3.set(\amp, 4, \length, 0.5, \fb, 0.50, \sep, 0.00012);
~dubecho3.free;
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

~delayll3 = Synth(\delayll, [\ibs,~recBus3,\freqLP,8000],~gr3);
~delayll3.free
~delayll3.set(\freqLP, 8000);
~delayll3.set(\random, 10);
// ~freeze1= Synth(\freeze, [ \ibs, ~recBus1],~ar1, \addAfter);
~nReverb1 = Synth(\nReverb, [\ibs, ~recBus1], ~gr1);
~nReverb5 = Synth(\nReverb, [\ibs, ~recBus5], ~gr5);
~nReverb5.free
~nReverb1.free
~nReverb2.free
~nReverb3 = Synth(\nReverb, [\ibs, ~recBus3], ~gr3);
~nReverb3.free
~nReverb3.set(\freqHP, 2000);
~nReverb4 = Synth(\nReverb, [\ibs, ~recBus4], ~gr4);
~nReverb4.free
~nReverb7 = Synth(\nReverb, [\ibs, ~recBus7], ~gr7);
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
~nReverb8 = Synth(\nReverb, [\ibs, ~recBus8],~ar8,\addAfter);
~blipDelay6= Synth(\blipDelay, [\ibs, ~recBus6],~gr6);
~blipDelay6.free;
~blipDelay4= Synth(\blipDelay, [\ibs, ~recBus4],~gr4);

~blipDelay8.free
~nReverb7.release;
~nReverb4.free;
~nReverb2.free
~nReverb8.free;