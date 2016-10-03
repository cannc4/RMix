
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////  RMix                   ///////////////////////
////////////////////////  Version 9              ///////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

Pbind(
\instrument,\acid,
\stretch, Pfunc({ ~tc }), //each Event the ~tc value is updated
and could be changed
\dur, Pseq([~tc.beatDur*0.5,~tc.beatDur,~tc.beatDur*0.5],inf),
\root,[-24,-17],
\degree,Pseq([0,3,5,7,9,11,5,1],inf),
\pan,Pfunc({1.0.rand2}),\cut,Pxrand([1000,500,2000,300],inf),
\rez,Pfunc({0.7.rand +0.3}),
\amp,0.2).play;


~tc = 1;
~tc = 2;
~tc = 0.5;
\amp,0.2).play(~tc);


Pbindef(\track1sq).play;
Pbindef(\track1sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track1sq, \dur, Pclutch(Pwhite(0.2, 0.4, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track1sq,\dur, Pseq([0.125,0.130,0.140,0.120], inf) );
Pbindef(\track1sq,\dur, 0.125);
Pbindef(\track1sq,\degree,Pseq([1,1], inf));
Pbindef(\track1sq, \degree, Pclutch(Pwhite(0.2, 0.4, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track1samplepr8,\control, Pseq([120,0,125,0,120,0], inf) );
Pbindef(\track1samplepr8,\dur, 0.125);


Pbindef(\track2sq).play;
Pbindef(\track2sq, \amp, Pseq([0.9,0,1, 0.8,0,9], inf));
Pbindef(\track2sq,\degree, Pseg(Pseq([0.1,0.4,10,0.9,1.3],inf) ));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(0.5, 0.9, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq, \dur, Pclutch(Pwhite(0.1, 0.3, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track2sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track2samplepr8).play
Pbindef(\track2samplepr8,\control, Pseq([120,0,125,0,120,0], inf) );


Pbindef(\track3sq,\dur, Pseq([0.2,0.4,0.2,0.2],inf));
Pbindef(\track3sq,\degree, Pstutter(Pwhite(-0, 2, inf), Pwhite(-1, 2, inf)));
Pbindef(\track3sq,\dur, Pseq([0.125,0.130,0.140,0.120], inf) );

Pbindef(\track4sq,\dur, Pseg(Pseq([10,80,40,10], inf) ));
Pbindef(\track4sq, \dur, Pclutch(Pwhite(0.1, 0.4, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track4sq,\degree, Pstutter(Pwhite(-10, -5, inf), Pwhite(-1, -10, inf)));
Pbindef(\track4sq,\dur, Pseq([0.125,0.130,0.140,0.120], inf) );

Pbindef(\track5sq,\dur, Pseg(Pseq([10,80,40,10]/400, inf) ));
Pbindef(\track5sq, \dur, Pclutch(Pwhite(0.1, 0.4, inf), Pdiff(Pkey(\degree)).abs > 0));
Pbindef(\track5sq,\degree, Pstutter(Pwhite(-15, -20, inf), Pwhite(-10, -20, inf)));
Pbindef(\track5sq,\dur, 0.5);


Pbindef(\track1synthpr2).stop
Pbindef(\track1synthpr1).play
Pbindef(\track1samplepr8).play
Pbindef(\track4synthpr8).play
Pbindef(\track3synthpr5).play
Pbindef(\track9samplepr8).play


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

Pbindef(\track5sq).play;
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










(
~recbuf= Synth.new(\RecordBuf, [\inbus, ~b7, \bufnum, b]);	//set a buffer as default
~playback = Synth(\playback, [\bufnum, 0, \atk , 0.01, \rel, 0.1 ]);
//~ech = Synth(\echo, [\amp, 1, \ibs, ~b3, \out , 0, \maxdtime, 0.2, \dtime, 0.5, \decay, 0.1], ~fxGroup);
~pcase = Synth(\pcase, [\amp, 1, \ibs, ~b2, \obs, 0, \mix,0.2], ~fxGroup);
~rev = Synth(\reverb, [\amp, 1, \ibs, ~b3, \obs , 0,\delaytime, 0.02, \decaytime, 0.001], ~fxGroup);
~flang = Synth(\flanger,[\amp, 1, \ibs, ~b4, \obs , 0, \flangefreq, 500, \fdbk, 0.5], ~fxGroup);
//~chorus=Synth(\chorus, [\amp, 1, \ibs , ~b4, \obs, 0],~fxGroup);
~freeverb = Synth(\freeverb,[\amp, 10, \ibs, ~b5, \obs, 0], ~fxGroup);
//~stutter=Synth(\fx, [\sample, 5000, \bs, ~b6, \obs, 0],~fxGroup);
///~gardrev = Synth(\GardnerReverb, [\out, 0, \in, ~b6,\amp, 1, \time, 2, \poll, 100], ~fxGroup);
~echo = Synth(\dubecho, [\amp, 2, \ibs, ~b1, \obs , 0,  \length, TempoClock.default.tempo*(3/8), \fb, 0.7, \sep, 0.0012], addAction: \addToTail);
~distort= Synth(\distort_filt, [\inbus ,~b7,  \amp , 0.5, \amt, 0.5, \rate, 10, \sig_thresh, 0.001, \detect_onsets,1]);
)
////////////////////////////////////Routings////////////////////////////////////
~ar1.set(\out, ~b1);
~ar1.set(\out, ~b2);
~ar1.set(\out, ~b3);
~ar1.set(\out, ~b4);
~ar1.set(\out, ~b5);
~ar1.set(\out, 0);

~ar2.set(\out, ~b1);
~ar2.set(\out, ~b2);
~ar2.set(\out, ~b3);
~ar2.set(\out, ~b4);
~ar2.set(\out, ~b5);
~ar2.set(\out, ~b6);
~ar2.set(\out, ~b7);
~ar2.set(\out, 0);

~ar3.set(\out, ~b1);
~ar3.set(\out, ~b2);
~ar3.set(\out, ~b3);
~ar3.set(\out, ~b4);
~ar3.set(\out, ~b5);
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
~ar8.set(\out, 0);




~recbuf.set(\inbus, ~b7);
~playback.set(\obs, 0);
~echo.set(\amp, 25, \length, 6, \fb, 0.8, \sep, 0.0012);
~echo.set(\amp, 15, \length, 0.5, \fb, 0.9, \sep, 0.002);
~echo.set(\amp, 35, \length, 0.5, \fb, 0.50, \sep, 0.00012); // ULTIMATE DELAY PARAMETERS
~echo.set(\amp, 20, \length, 0.1, \fb, 0.2, \sep, 0.012);

~echo.set(\amp, 30, \length, 0.001, \fb, 0.8, \sep, 0.0012);
~pcase.set(\amp, 1, \mix,0.6);
~freeverb.set(\amp,5, \delaytime, 0.1 , \decaytime, 1000);
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



///////////////////////////////////////// Sequence ////////////////////////////////////////////////
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

}).play;
)
SystemClock.play(t)
t.stop


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


		2.wait;
		delta.yield;
	}
}).play;
)
l.stop

////////////////////////////////////////////////////////////////////////////////////////////////








s.makeWindow


///////////////////////////////////////// SYNTHS ///////////////////////////////////////////////

(
SynthDef(\pbindefx, { arg out, in, time1=0.25, time2=0.5;
	var audio, efx;
	audio = In.ar([20, 21], 2);
	efx=CombN.ar(audio, 0.5, [time1, time2], 10, 1, audio);
	Out.ar(out, efx);
}).add;



~acid = SynthDef(\acid, { arg out, freq = 432, gate = 1, pan = 0, cut = 4000, rez = 0.5, amp = 1;

	var output = Pan2.ar(
		RLPF.ar(
			Pulse.ar(freq, 0.05),
			cut, rez),
		pan) * EnvGen.kr(Env.linen(0.02, 0.8, 0.4), gate, amp, doneAction:2);
	output = Limiter.ar(output	,0.9, 0.05);
	output = (-12).dbamp * output;
	Out.ar(out,output);
}).add;

)
~acidCnt = Synth.after(1, \pbindefx);
(
~acidSeq= Pbind(\instrument, \acid,
	\out, 20,
	\dur, Pseq([0.25, 0.5, 0.25], inf),
	\root, [-24, -17],
	\degree, Pseq([0, 2, 5, 7, 9, 12, 14,17,19], inf),
	\pan, Pfunc({1.0.rand2}),
	\cut, Pxrand([1000, 5000], inf),
	\rez, Pfunc({0.7.rand +0.3}),
	\amp, 0.13).play;
)

~acidCnt.set(\time1, 0.25,\time1, 0.1);
~acidCnt.set(\time1, 0.25,\time1, 0.1);
~acidCnt.set(\time1, 0.50,\time1, 0.8);
~acidCnt.set(\out, ~b5);
~acidCnt.set(\out, 0);
~acidSeq.stop;


(
~acidSeq2= Pbind(\instrument, \acid,
	\out, 20,
	\dur, Pseq([0.25, 0.5, 0.25], inf),
	\root, [-24, -17],
	\degree, Pseq([0, 2, 5, 7, 9, 12, 14,17,19], inf),
	\pan, Pfunc({1.0.rand2}),
	\cut, Pxrand([1000, 500, 100, 300], inf),
	\rez, Pfunc({0.7.rand +0.3}),
	\amp, 0.1).play;
)
~acidSeq2.play
~acidSeq2.stop

(
~acidSeq3= Pbind(\instrument, \acid,
	\out, 20,
	\dur, Pseq([0.25, 0.5, 0.25], inf),
	\root, [-10, -17],
	\degree, Pseq([0, 2, 5, 7, 9, 12, 14,17,19], inf),
	\pan, Pfunc({1.0.rand2}),
	\cut, Pxrand([1000, 500, 100, 300], inf),
	\rez, Pfunc({0.7.rand +0.3}),
	\amp, 0.01).play;
)
~acidSeq3.play
~acidSeq3.stop;



(
~molecular_box = { arg lenpat, quant=16, keep=3, pattern;

	Prout({ arg ev;

		var lenstr = lenpat.asStream;
		var patstr;
		var buf = Array.fill(quant,{List.new});
		var pat, len;
		var i;
		var basepat;

		patstr = pattern.asStream;

		len = lenstr.next;
		if(len.isNil) {
			nil.yield;
		};

		i = 0;
		inf.do {
			var n;
			buf[i] = buf[i].keep(0-keep);
			n = buf[i];

			if(n.size != 0) {
				// previous note found, change note length
				len = lenstr.next;
				if(len.isNil) {
					nil.yield;
				};
			};

			basepat = ev;
			basepat[\legato] = len;
			pat = patstr.next(basepat);
			if(pat.isNil) {
				nil.yield;
			};

			n.add(Pn(pat,1));

			len.do {
				var n = buf[i];

				if(n.size != 0) {
					ev = Ppar(n).embedInStream;
				} {
					var myev;
					myev = ev.deepCopy;
					myev[\isRest] = true;
					ev = Pn(myev,1).embedInStream;
				};
				i = (i+1) % quant;
			};
		}
	})
};
);




(
SynthDef(\simple, { arg out=0, amp=0.1, gate=1, pan=0, spread=0.8, freq=261.6, doneAction=2;
	var sig, sig1, sig2, sig3;
	sig = SinOsc.ar(freq * [1,1.01,2.01,1.02,1/2] * (SinOsc.kr(3)*0.01+1));
	sig = sig + LFTri.ar(freq * [1,1/2,1.01]);
	sig = sig * EnvGen.ar(\adsr.kr(Env.adsr(0.01,0.1,0.8,0.1)),gate,doneAction:doneAction);
	sig = Splay.ar(sig, spread, amp, pan);
	sig = (-3).dbamp * sig;
	Out.ar(out, sig);
}).add;
SynthDef(\saw, { arg out=0, amp=0.1, gate=1, pan=0, spread=0.8, freq=261.6, doneAction=2;
	var sig, sig1, sig2, sig3;
	var env;
	sig = LFSaw.ar(freq * [1,1.01,2.01,1.02]);
	sig = Pulse.ar(freq * [1,1.01,2,2.01,1.002]) + sig;
	env = EnvGen.ar(Env.adsr(0.4,0.3,0.31,0.1),gate,doneAction:0);
	sig = RLPF.ar(sig, \ffreq.kr(1000) * (env+0.5));
	sig = sig * EnvGen.ar(\adsr.kr(Env.adsr(0.01,0.1,0.8,0.1)),gate,doneAction:doneAction);
	sig = Splay.ar(sig, spread, amp, pan);
	sig = FreeVerb.ar(sig,0.5,0.7);
	sig = (-3).dbamp * sig;
	Out.ar(out, sig);
}).add;

)


(

Pdef(\mol,

	~molecular_box.(Pseq([4.5,8],inf), 16, 3,
		Pseq([
			Pbind(
				\instrument, Pn(\simple,4),
				\adsr, Pseq([
					[ Env.adsr(0.1,0.1,0.8,0.4) ],
					[ Env.adsr(0.4,0.4,0.6,0.2) ],
				],inf),
				\legato, Pkey(\legato) / 2,
			),
			Pbind(
				\instrument, Pn(\saw,4),
				\ffreq, Pseq([5000,1000,200,2000],inf),
				\adsr, Pseq([
					[ Env.adsr(0.1,0.4,0.4,0.3) ],
				],inf),
				\legato, Pkey(\legato) / 2,
			),
		],inf),

		Pbind(
			\degree, Pseq([
				Pseq((0..13)),
				Pseq((0..10)-4),
				Pseq((5..1)),
				Pseq((0..5)*2),
				Pseq((20..10)),
				Pseq((0..10)-10),
			],inf),
		);

	),

	Pbind(
		\dur, 1/4,
		\scale, Scale.minor,
	)

).play;

)



(
var scale,fund;
scale = [0,3,7];
fork{
	loop{
		var t = [16,32].choose;
		fund = 26+[0,3,7,10,14].choose;
		fund.postln;
		t.wait;
	};
};

fork{
	loop{
		var t = 1/2;
		var a,d,s,r,fa,fd,fs,fr,ratio,dtune,freq,
		ffreq,vibrate,vibdepth,cutoff,amp;
		freq = (scale.choose+fund+(12*(0..3).choose)).midicps;
		vibrate = t/(1..10).choose;
		vibdepth = (90..500).choose.reciprocal;
		dtune = 1e-3; LFNoise0.kr(t,0.02,1);
		cutoff = freq * (1.1,1.2..4).choose;
		ratio = (0.99,0.991..1.01).choose;
		amp = 1/4;

		a = 3.0.rand/t;
		s = 3.0.rand/t;
		r = 3.0.rand/t;
		fa = 3.0.rand/t;
		fs = 3.0.rand/t;
		fr = 3.0.rand/t;

		play{
			var env, fenv, sig, gate, vib;
			gate = Line.kr(1,0,t);
			env = EnvGen.kr(Env.linen(a,s,r),doneAction:2);
			fenv = EnvGen.kr(Env.linen(fa,fs,fr));
			freq = Line.kr(freq,freq*ratio,t);
			vib = SinOsc.kr(vibrate).range(vibdepth.neg,vibdepth)+1;
			freq = vib*freq;
			//freq = freq.lag(t);
			sig = Select.ar(2.rand,[
				Pulse.ar([freq,freq*(1+dtune),freq*(1-dtune)],
					LFNoise2.kr(t,0.5,0.5), 0.1).sum,
				Saw.ar([freq,freq*(1+dtune),freq*(1-dtune)]).sum
			]);
			sig = sig.tanh * env;
			ffreq = max(fenv*freq*12,cutoff)+100;
			sig = MoogFF.ar(sig,ffreq,LFNoise2.kr(1/t,1.4,1.5)).tanh;
			sig = RLPF.ar(sig,1e4,0.9).tanh;
			sig = (-3).dbamp * sig;
			Pan2.ar(sig*amp,LFNoise2.kr(t.rand));

		};
		t.wait;
	};
};
)

