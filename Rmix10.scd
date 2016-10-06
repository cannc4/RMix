
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////  RMix                   ///////////////////////
////////////////////////  Version 10             ///////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
(
~ringMod = Synth(\ring_mod, [\ibs, ~b6],addAction: \addToTail);
~feedbackDelay = Synth(\feedback_delay, [\amp, 2, \inBus, ~b5, \outBus, 0,  \delaytime, 0.2,\xfadetime,0.2]);
~echo = Synth(\dubecho, [\amp, 2, \ibs, ~b1, \obs , 0,  \length, TempoClock.default.tempo*(3/8), \fb, 0.7, \sep, 0.0012],addAction: \addToTail);
~reverb= Synth(\reverb2, [ \ibs, ~b2, \obs , 0,  \delaytime,1, \decaytime, 1, \amp, 1],addAction: \addToTail);
~reverb2= Synth(\reverb, [ \ibs, ~b3, \obs , 0,  \revtime,1.8, \mix, 1, \amp, 1],addAction: \addToTail);
~freeze= Synth(\freeze, [ \ibs, ~b4, \obs , 0,  \freeze,0],addAction: \addToTail);
~recbuf= Synth.new(\RecordBuf, [\inbus, ~b7, \bufnum, b]);	//set a buffer as default
~playback = Synth(\playback, [\bufnum, 0, \atk , 0.01, \rel, 0.1 ]);
~tc = TempoClock(1.5);)
//RECORD//
(
~ar7.set(\out, ~b4);
~test_DrumSmpl1 = 1;
~test_DrumSmpl2 = 1;
~test_DrumSmpl3 = 1;
~test_DrumSmpl4 = 1;
~test_DrumSmpl5 = 1;
~test_DrumSmpl6 = 1;
~test_SumanGuru = 1;
~test_Acid = 1;

"multitrack.scd".loadRelative;
)
//CLOSE//
"multitrackclose.scd".loadRelative;

~granularBuffer= Buffer.alloc(s, 44100 * 8.0, 1); // 8 second mono buffer

(
SynthDef(\recBuf,{ arg out=0, bufnum=0;
	var in;
	in= ~b1;
	RecordBuf.ar(in, bufnum);
}).load(s);
)
(
x = Synth(\recBuf, [\out, 0, \bufnum, ~granularBuffer.bufnum]);
x.free;
(
Pbind(
	\instrument, "granular_sampling",
	\trigger, 0,
	\graindur, Pseq([0.33, 0.34, 0.26, 0.51], inf),
	\sndbuf, b,
	\transp, Pseq([1, 1, 1, 1, 1, 1, 1, 1.5], inf),
	\pos, Pseq([0.2, 0.11, 0.12, 0.14], inf),
	\pan, Pwhite(-1, 1),
	\amp, Prand([0.9, 1], inf),
	\envbuf, -1,
	\dur, Pseq([0.25, 0.125, 0.125, 0.6], inf);
).stop;
)
(
SynthDef("granular_sampling", {arg trigger = 0, graindur = 0.2, sndbuf, transp = 1, pos = 0, pan = 0, envbuf = -1, amp = 1, gate = 1;
	var env, snd;
	env = EnvGen.kr(Env.asr, gate, levelScale: amp, doneAction: 2);
	snd = GrainBuf.ar(
		numChannels: 2,
		trigger: Impulse.kr(trigger),
		dur: graindur,
		sndbuf: sndbuf,
		rate: transp,
		pos: pos,
		pan: pan,
		envbufnum: envbuf);
	Out.ar(0, snd * env);
}).add;
)
SynthDescLib.global.read;
SynthDescLib.global.browse;
)
~tempos = [120/160, 160/60];

~tc = TempoClock(2);
~tc = TempoClock(3.2);
\amp, Pseq([0.2, 0.15, 0.1, 0.05, 0],
inf)
\degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14],
\dur, Pseq([4, [5,2,1]].convertRhythm / 2, inf),
\strum, Pwhite(0,1/8,inf),
\octave, [5,6]
//Pseries(0, 1, 8),
//Pseq([Pseq([100, 200, 300], 2), 400, 500, 600],inf)~tc = 0.1;
//Pseq([Pseq([100, 200, 300], 2), 400, 500, 600],inf)

//PdurStutter

Pbindef(\track1sq).play(~tc);
Pbindef(\track1sq).stop;
Pbindef(\track1sq,\degree,Pseq([1,-1], inf));
Pbindef(\track1sq, \dur, Pseq([0.4,0.2,0.1,0.1,0.1], inf));
Pbindef(\track1sq, \amp, Pseq([1,0.5,0,1,0.5], inf));
Pbindef(\track1sq, \amp, Pn([0,0.9,0,1,1], inf));
Pbindef(\track1sq, \dur, Pseq([Pfunc({~tc* 0.2}),Pfunc({~tc* 0.4})],inf));
Pbindef(\track1sq, \dur, Pseq([Pseq(~tempos, 2),inf],inf));
Pbindef(\track1sq, \dur, Pclutch(Pwhite(0.25, 0.29, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track1sq,\dur,  Pseg(Pseq([~tc*0.25,~tc*0.2,~tc*0.25],inf)));
Pbindef(\track1sq,\dur,  Pseg(Pseq([~tc*0.25,~tc*0.2,~tc*0.25],inf)));
Pbindef(\track1sq, \dur, Pclutch(Pwhite(~tc, ~tc*0.25, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track1sq,\dur,Pfunc({ ~tc }));
Pbindef(\track1sq,\dur, Pseq([3, [2,1,2]].convertRhythm / 2, inf));//////////////
Pbindef(\track1sq, \amp, Pseq([0.2, 0.15, 0.1, 0.09, 0.5]*8,inf));///////////////
Pbindef(\track1sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04],inf) ));///////
Pbindef(\track1samplepr8,\control, Pseq([120,0,125,0,120,0], inf) );
Pbindef(\track1samplepr1,\control,Pclutch(Pwhite(120, 80, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track1samplepr8,\control, Pseq([Pseq([10, 100, 89], 2), 99, 120, 0],inf));
Pbindef(\track1samplepr8,\dur, 0.0);
Pbindef(\track1samplepr7).stop;
Pbindef(\track1samplepr8).play(~tc);

Pbindef(\track1sq).play(~tc);
Pbindef(\track2sq).play(~tc);
Pbindef(\track2sq).stop;

Pbindef(\track2sq, \amp, Pseq([1,1,0,1,0], inf));
Pbindef(\track2sq, \amp, Pwhite(0.4,1.1));
Pbindef(\track2sq, \dur, Pfunc({~tc* 0.2}));
Pbindef(\track2sq, \degree, Pn(Pseries(0, Pwrand([Pwhite(-3,3,inf).round(1),1],[32,1],inf), 4),inf)-1 + [0,2,-1,-14]);
Pbindef(\track2sq, \dur, Pseq([(~tc* 0.2),(~tc)],inf));
Pbindef(\track2sq, \dur, Pseq([0.1,0.2,0.2,0.1,0.1], inf));
Pbindef(\track2sq,\amp, Pseg(Pseq([0.1,0.4,2,0.9,0.8],inf) ));//
Pbindef(\track2sq,\dur, Pseg(Pseq([0.1,0.4,1,0.9,0.8],inf) ));////////////////////
Pbindef(\track2sq, \dur, Pseq([0.6,0.5,0.05,0.0.9,0.1], inf));
Pbindef(\track2sq, \dur, Pseq([0.1,0.08,0.07,0.12,0.05]*2, inf));
Pbindef(\track2sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track2sq,\amp, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*1,inf) ));
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.9,0.05,0.95,0.1,0.02]*2/10,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.08,0.2,0.05,0.15,0.1,0.2],inf) ));///////
Pbindef(\track2sq,\dur, Pseq([3.5, [2,1,2]].convertRhythm / 2, inf));////////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08],inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.01,0.1,0.09,0.7,0.2,0.04],inf) ));///////
Pbindef(\track2sq,\amp, Pseg(Pseq([0.01,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////
Pbindef(\track2sq,\dur, Pseg(Pseq([0.2,0.1,0.25,0.7,0.2,0.04]*2,inf) ));///////

Pbindef(\track2sq,\dur, Pseg(Pseq([0.1,0.4,0.4,0.1,0.4],inf) ));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(0.7, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(~tc*0.4, ~tc*0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq,\dur, Pseq([0.1,0.02,0.05,0.2],inf));
Pbindef(\track2sq,\amp, Pseq([0.7,0.2,0.9,0.1]*2,inf));
Pbindef(\track2samplepr8).play(~tc);
Pbindef(\track2samplepr8,\control, Pseg(Pseq([0.02,0.9,0.05,0.7,0.1,0.08]*100,inf) ));


Pbindef(\track3sq, \dur, Pseq([Pseq([0.1, 0.2, 0.3], 2), 0.4, 0.5, 0.6]/2,inf));
Pbindef(\track3sq).play(~tc);
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
Pbindef(\track3samplepr5,\control, Pseq([60,0,125,0,90,10], inf) );
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
Pbindef(\track4sq,\degree, Pseg(Pseq([0.1,0.4,10,0.9,1.3],inf) ));
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
Pbindef(\track4synthpr2,\control, Pseq([120,0,125,0,120,0], inf) );
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
Pbindef(\track4synthpr2,\control, Pseq([120,0,125,0,120,0], inf) );
Pbindef(\track5synthpr2,\control,Pclutch(Pwhite(120, 100, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track5samplepr1,\control,Pclutch(Pwhite(120, 80, inf), Pdiff(Pkey(\dur)).abs > 0));
Pbindef(\track5samplepr1).play();

Pbindef(\track11sq).play(~tc);
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









////////////////////////////////////Routings////////////////////////////////////
~ar1.set(\out, ~b1);
~ar1.set(\out, ~b2);
~ar1.set(\out, ~b3);
~ar1.set(\out, ~b4);
~ar1.set(\out, ~b5);
~ar1.set(\out, ~b6);
~ar1.set(\out, 0);

~ar2.set(\out, 0);
~ar2.set(\out, ~b1);
~ar2.set(\out, ~b2);
~ar2.set(\out, ~b3);
~ar2.set(\out, ~b4);
~ar2.set(\out, ~b5);
~ar2.set(\out, ~b6);



~ar3.set(\out, ~b1);
~ar3.set(\out, ~b2);
~ar3.set(\out, ~b3);
~ar3.set(\out, ~b4);
~ar3.set(\out, ~b5);
~ar3.set(\out, ~b6);
~ar3.set(\out, 0);

~ar4.set(\out, ~b1);
~ar4.set(\out, ~b2);
~ar4.set(\out, ~b3);
~ar4.set(\out, ~b4);
~ar4.set(\out, ~b5);
~ar4.set(\out, 0);

~ar5.set(\out, ~b1);
~ar5.set(\out, ~b2);
~ar5.set(\out, ~b3);
~ar5.set(\out, ~b4);
~ar5.set(\out, ~b5);
~ar5.set(\out, 0);

~ar6.set(\out, ~b1);
~ar6.set(\out, ~b2);
~ar6.set(\out, ~b3);
~ar6.set(\out, ~b4);
~ar6.set(\out, ~b5);
~ar6.set(\out, 0);

~ar7.set(\out, ~b1);
~ar7.set(\out, ~b2);
~ar7.set(\out, ~b3);
~ar7.set(\out, ~b4);
~ar7.set(\out, ~b5);
~ar7.set(\out, ~b6);

~ar7.set(\out, 0);

~ar8.set(\out, ~b1);
~ar8.set(\out, ~b2);
~ar8.set(\out, ~b3);

~ar8.set(\out, ~b4);
~ar8.set(\out, ~b5);
~ar8.set(\out, ~b6);
~ar8.set(\out, 0);



////////////////FX PARAMS////////////////


~ringMod.set(\carrFreq, 124);
~ringMod.set(\which, 0);

~playback.set(\obs, 0);
~echo.set(\amp, 5, \length, 6, \fb, 0.8, \sep, 0.0012);
~echo.set(\amp, 15, \length, 0.5, \fb, 0.9, \sep, 0.002);
~echo.set(\amp, 5, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
~echo.set(\amp, 10, \length, 0.1, \fb, 0.2, \sep, 0.012);
~feedbackDelay.set(\mix, 0.5, \feedback, 0.5);
~echo.set(\amp, 30, \length, 0.001, \fb, 0.8, \sep, 0.0012);
~freeze.set(\freq,100);
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

