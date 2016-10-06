//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////  SYNTHDEFS  //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(
SynthDef("AR1", { arg out=0, in=2;
	var input;
	input = SoundIn.ar(in);

	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("AR1-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(2);
	DiskOut.ar(bufnum, input);
}).add;

SynthDef("AR2", { arg out=0, in=3;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;

SynthDef("AR2-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(3);
	DiskOut.ar(bufnum, input);
}).add;

SynthDef("AR3", { arg out=0, in=4;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("AR3-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(4);
	DiskOut.ar(bufnum, input);
}).add;

SynthDef("AR4", { arg out=0, in=5;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);
}).add;

SynthDef("A4-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(5);
	DiskOut.ar(bufnum, input);
}).add;
SynthDef("AR5", { arg out=0, in=6;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("A5-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(6);
	DiskOut.ar(bufnum, input);
}).add;
SynthDef("AR6", { arg out=0, in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);
}).add;
SynthDef("A6-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(7);
	DiskOut.ar(bufnum, input);
}).add;
SynthDef("AR7", { arg out=0, in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("AR7-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(8);
	DiskOut.ar(bufnum, input);
}).add;
SynthDef("AR8", { arg out=0, in=9;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("A8-Diskout", {arg bufnum;
	var input = (-10).dbamp * In.ar(9);
	DiskOut.ar(bufnum, input);
}).add;

//////////////////////////////////// FX START ////////////////////////////////////
//        chain1 = PV_MagFreeze( chain1, freeze );
//chain1 = PV_BinShift(chain1, 1, chain2);
//	chain1 = PV_XFade(chain1, popFreq, 2 );
//	var	popFreq = EnvGen.ar(Env([3261, 410, 1000], [0.005, 0.01], curve: \exp));
SynthDef(\freeze,  { arg freeze = 1.1, obs= 0, ibs, freq=800, bufSize = 8192;
	var chain1, chain2, frozen, inp,temp;
	inp  = In.ar(ibs,2).asArray;
	temp =  Pulse.ar(freq, 0.56, 0.90);
	chain1 = FFT( LocalBuf( bufSize ! 2 ), inp );
	chain2 = FFT( LocalBuf( bufSize ! 2 ), temp);
	chain1 = PV_CopyPhase( chain1, chain2 );
	frozen = IFFT( chain1 ).dup;
	frozen = Pan2.ar(frozen,  FSinOsc.kr(2), 1, 0);
	Out.ar( obs, (5).dbamp *frozen );
}).add;
// SynthDef("~test_Sumanguru", {arg bufnum, ibs=~b4;
// 	var input = (-10).dbamp * ibs;
// 	DiskOut.ar(bufnum, input);
// }).add;

SynthDef(\ring_mod, {arg ibs, obs=0, carrFreq = 440, modFreq = 2, amp = 0.06, which = 0;
			var carrier, modulator, input, chain1, chain2;
	input = In.ar(ibs);
			carrier = Select.ar(which,
				[
					SinOsc.ar(Lag.kr(carrFreq)),
					Blip.ar(Lag.kr(carrFreq), 5),
					Saw.ar(Lag.kr(carrFreq))
			]);
			modulator = SinOsc.ar(Lag.kr(modFreq));
	/*chain1 = FFT( LocalBuf( 8192 ! 2 ), input );
	chain2 = FFT( LocalBuf( 8192 ! 2 ), modulator);
	chain1 = PV_CopyPhase( chain1, chain2 );
	modulator = IFFT( chain1 ).dup;*/
	Out.ar(obs, (10).dbamp*( carrier * input ));
		}).add;


SynthDef(\reverb2, {arg ibs, obs=0, delaytime=0.01, decaytime=1, amp=1;
 	var input;
 	var numc,numa,temp;
 	input=In.ar(ibs);
	numc = 4; // number of comb delays
 	numa = 12; // number of allpass delays
 	temp = DelayN.ar(input, 0.50,0.050);
 	temp=Mix.fill(numc,{CombL.ar(temp,0.1,rrand(0.1, 0.2),5)});
 	numa.do({ temp = AllpassN.ar(temp, 0.49, [rrand(0.01, 0.02),rrand(0.01, 0.02)], 1) });
 	temp = temp * (amp-5).dbamp;
 	Out.ar(obs,temp);
 }).add;
SynthDef(\reverb, {
		arg		amp=1, lPos=0, mix=0.085, revTime=1.8, preDel=0.1, ibs, obs;
		var		sig, verbSig, totalSig, outSig;

		//no wacky values please
		mix = mix.clip(0,1);

		sig = In.ar(ibs);

		//pre-delay
		verbSig = DelayN.ar(sig, preDel, preDel);

		totalSig = 0;
		12.do{
			verbSig = AllpassN.ar(verbSig, 0.06, {Rand(0.001,0.06)}!2, revTime);
			verbSig = LPF.ar(verbSig, 4500);
			totalSig = totalSig + verbSig;
		};

		//dry/wet mix
		totalSig = XFade2.ar(sig, totalSig, mix.linlin(0,1,-1,1));

		outSig = totalSig * amp;
		Out.ar(obs, outSig);
	}).add;


SynthDef(\dubecho,{ arg ibs, obs=0 , length = 1, fb = 0.8, sep = 0.012, amp = 1;
	var input = In.ar(ibs);
	var magic;var real = 0.2;
	var imag = 0.8;
	var magicL;
	var fft = 0.5;
	var output = input + Fb({

		arg feedback;
		var left,right;
		magic = LeakDC.ar(feedback*fb + input);
		magic = HPF.ar(magic, 400);
		magic = LPF.ar(magic, 5000);
		magic = magic.tanh;
		#left, right = magic;
		magic = [DelayC.ar(left, 1, LFNoise2.ar(12).range(0,sep)), DelayC.ar(right, 1, LFNoise2.ar(12).range(sep,0))];
	},length);
	magicL = magic * (amp-6).dbamp;


	Out.ar(obs,magicL);
}).add;





//
// SynthDef(\feedback_delay, { | inBus, outBus = 0, delaytime = 0.2, xfadetime = 0.2,
// 	feedback = 0.3, mix = 0.3, amp = 0.3 |
//
// 	var in, src, sig, feed;
// 	in = In.ar(inBus);
// 	feed = LocalIn.ar(2);
// 	src = Limiter.ar(XFadeDelay.ar(in + feed, 1, delaytime, xfadetime));
// 	LocalOut.ar(src * feedback);
// 	sig = src * amp;
//
// 	Out.ar(outBus, sig);
// }).add;


b = Buffer.alloc(s,s.sampleRate/(s.options.blockSize),1);

SynthDef(\RecordBuf, { arg inbus, bufnum = 0, trigger = 1;
	inbus= SoundIn.ar;	//temp testing - remove later
	RecordBuf.ar(inbus, bufnum, run: trigger, trigger: 0, loop: 1, doneAction: 2);
}).add;

SynthDef(\playback, { arg obs = 0, bufnum = 0, atk= 0.01, rel= 0.1;
	var env= EnvGen.ar(Env.linen(atk, BufDur.ir(bufnum)-atk-rel, rel), doneAction:2);
	var src= PlayBuf.ar(1, bufnum);
	Out.ar(obs, Pan2.ar(src*env));
}).add;




/////////////////////////////////// FX END //////////////////////////////////////////
/////////////////////////////////// DRUMS //////////////////////////////////////////

SynthDef(\kick, {
	|out = 0, pan = 0, amp = 0.3|
	var body, bodyFreq, bodyAmp;
	var pop, popFreq, popAmp;
	var click, clickAmp;
	var snd;

	// body starts midrange, quickly drops down to low freqs, and trails off
	bodyFreq = EnvGen.ar(Env([261, 120, 51], [0.035, 0.08], curve: \exp));
	bodyAmp = EnvGen.ar(Env.linen(0.005, 0.1, 0.3), doneAction: 2);
	body = SinOsc.ar(bodyFreq) * bodyAmp;
	// pop sweeps over the midrange
	popFreq = XLine.kr(750, 261, 0.02);
	popAmp = EnvGen.ar(Env.linen(0.001, 0.02, 0.001)) * 0.15;
	pop = SinOsc.ar(popFreq) * popAmp;
	// click is spectrally rich, covering the high-freq range
	// you can use Formant, FM, noise, whatever
	clickAmp = EnvGen.ar(Env.perc(0.001, 0.01)) * 0.15;
	click = LPF.ar(Formant.ar(910, 4760, 2110), 3140) * clickAmp;

	snd = body + pop + click;
	snd = snd.tanh;

	Out.ar(out, Pan2.ar(snd, pan, amp));
}).add;

SynthDef(\snare, {
	|out = 0, pan = 0, amp = 0.3|
	var pop, popAmp, popFreq;
	var noise, noiseAmp;
	var snd;

	// pop makes a click coming from very high frequencies
	// slowing down a little and stopping in mid-to-low
	popFreq = EnvGen.ar(Env([3261, 410, 160], [0.005, 0.01], curve: \exp));
	popAmp = EnvGen.ar(Env.perc(0.001, 0.11)) * 0.7;
	pop = SinOsc.ar(popFreq) * popAmp;
	// bandpass-filtered white noise
	noiseAmp = EnvGen.ar(Env.perc(0.001, 0.15), doneAction: 2);
	noise = BPF.ar(WhiteNoise.ar, 810, 1.6) * noiseAmp;

	snd = (pop + noise) * 1.3;

	Out.ar(out, Pan2.ar(snd, pan, amp));
}).add;

SynthDef(\hihat, {
	|out = 0, pan = 0, amp = 0.3|
	var click, clickAmp;
	var noise, noiseAmp;
	var snd;

	// noise -> resonance -> expodec envelope
	noiseAmp = EnvGen.ar(Env.perc(0.001, 0.3, curve: -8), doneAction: 2);
	noise = Mix(BPF.ar(ClipNoise.ar, [4010, 4151], [0.15, 0.56], [1.0, 0.6])) * 0.7 * noiseAmp;

	snd = noise;

	Out.ar(out, Pan2.ar(snd, pan, amp));
}).add;

// adapted from a post by Neil Cosgrove (other three are original)
SynthDef(\clap, {
	|out = 0, amp = 0.5, pan = 0, dur = 1|
	var env1, env2, snd, noise1, noise2;

	// noise 1 - 4 short repeats
	env1 = EnvGen.ar(
		Env.new(
			[0, 1, 0, 0.9, 0, 0.7, 0, 0.5, 0],
			[0.001, 0.009, 0, 0.008, 0, 0.01, 0, 0.03],
			[0, -3, 0, -3, 0, -3, 0, -4]
		)
	);

	noise1 = WhiteNoise.ar(env1);
	noise1 = HPF.ar(noise1, 600);
	noise1 = LPF.ar(noise1, XLine.kr(7200, 4000, 0.03));
	noise1 = BPF.ar(noise1, 1620, 3);

	// noise 2 - 1 longer single
	env2 = EnvGen.ar(Env.new([0, 1, 0], [0.02, 0.18], [0, -4]), doneAction:2);

	noise2 = WhiteNoise.ar(env2);
	noise2 = HPF.ar(noise2, 1000);
	noise2 = LPF.ar(noise2, 7600);
	noise2 = BPF.ar(noise2, 1230, 0.7, 0.7);

	snd = noise1 + noise2;
	snd = snd * 2;
	snd = snd.softclip;

	Out.ar(out, Pan2.ar(snd,pan,amp));
}).add;
//////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////SYNTHDEFS//////////////////////////////////////////////////////
//
// SynthDef(\Sumanguru, {arg freq,amp,
// 	feedB,rand,reverb,trigRt,attk,rel,
// 	totVol;
// 	var triggerSpeed = (freq/trigRt);
// 	var trigger = Impulse.ar(triggerSpeed);
// 	var simpleEnv = Env.perc(attackTime:attk,releaseTime: rel).ar(2);
// 	var main = SinOscFB.ar(TExpRand.kr(freq/rand,freq*rand,trigger),feedB,
// 	mul:EnvGen.ar(Env.perc(0.5/triggerSpeed, 0.5/triggerSpeed),trigger));
// 	var out = FreeVerb.ar(main,mix:reverb,room:reverb,damp:0.5);
// 	out = out *((totVol + amp -15).dbamp) * simpleEnv;
// 	Out.ar(0,out);
// }).add;
// SynthDef(\SumanguruDiskout, {arg bufnum;
// 	DiskOut.ar(bufnum, In.ar(1));
// }).add;

~rytmGroup = Group.new(s);
~fxGroup = Group.after(~rytmGroup);
~b0= Bus.audio(s);
~b1 = Bus.audio(s);
~b2 = Bus.audio(s);
~b3 = Bus.audio(s);
~b4 = Bus.audio(s);
~b5 = Bus.audio(s);
~b6 = Bus.audio(s);
~b7 = Bus.audio(s);
~b0=0;
~ar1 = Synth("AR1",~rytmGroup);
~ar2 = Synth("AR2", ~rytmGroup);
~ar3 = Synth("AR3",~rytmGroup);
~ar4 = Synth("AR4",~rytmGroup);
~ar5 = Synth("AR5",~rytmGroup);
~ar6 = Synth("AR6",~rytmGroup);
~ar7 = Synth("AR7",~rytmGroup);
~ar8 = Synth("AR8",~rytmGroup);
~ar1.set(\out, ~b0);
~ar2.set(\out, ~b0);
~ar3.set(\out, ~b0);
~ar4.set(\out, ~b0);
~ar5.set(\out, ~b0);
~ar6.set(\out, ~b0);
~ar7.set(\out, ~b0);
~ar8.set(\out, ~b0);
)