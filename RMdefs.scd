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

	input = (-20).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("AR1-Diskout", {arg bufnum;
	var input = (-20).dbamp * In.ar(2);
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
	DiskOut.ar(bufnum, In.ar(5));
}).add;
SynthDef("AR5", { arg out=0, in=6;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("A5-Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(6));
}).add;
SynthDef("AR6", { arg out=0, in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);
}).add;
SynthDef("A6-Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(7));
}).add;
SynthDef("AR7", { arg out=0, in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("AR7-Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(8));
}).add;
SynthDef("AR8", { arg out=0, in=9;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(out, [input,input]);

}).add;
SynthDef("A8-Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(9));
}).add;

//////////////////////////////////// FX START ////////////////////////////////////


SynthDef(\pcase, { arg ibs=0, obs=0, mix=0.02, amp = 1;


	var casein = In.ar(ibs);
	var delayA = CombC.ar(casein, 0.00077, 0.00077, 0.1);
	var delayB = CombC.ar(delayA, 0.00088, 0.00088, 0.1);
	var bands = BPF.ar(delayB, [1243, 287, 431], 1/12).sum;
	var son = bands.clip2(0.3);

	var output =Limiter.ar(LeakDC.ar( XFade2.ar(casein, son, mix)));
	output = output *(amp-6).dbamp;
	Out.ar(obs,output);

}).add;

SynthDef(\reverb, {arg ibs, obs=0, delaytime=0.01, decaytime=1, amp=1;
	var input;
	var numc,numa,temp;

	input=In.ar(ibs);
	numc = 8; // number of comb delays
	numa = 2; // number of allpass delays
	temp = DelayN.ar(input, 0.048,0.048);
	temp=Mix.fill(numc,{CombL.ar(temp,0.1,rrand(0.01, 0.1),5)});
	numa.do({ temp = AllpassN.ar(temp, 0.049, [rrand(0.01, 0.02),rrand(0.01, 0.02)], 1) });
	temp = temp * (amp-6).dbamp;
	Out.ar(obs,temp);
}).add;


SynthDef(\freeverb,{arg ibs, obs = 0, gate= 1, amp = 1;

	var sig = In.ar(ibs);
	sig = FreeVerb.ar(sig,0.5,0.7);
	sig = (amp-6).dbamp * sig;
	Out.ar(obs, sig);


}).add;


SynthDef(\dubecho,{ arg ibs, obs=0 , length = 1, fb = 0.8, sep = 0.012, amp = 1;
	var input = In.ar(ibs);
	var magic;var real = 0.2;
	var imag = 0.8;
	var magicL;
	var fft = 0.1;
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
SynthDef("Sumanguru-Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(2));
}).add;


SynthDef(\flanger, { arg obs=0, ibs , amp=1, flangefreq=2, fdbk=0.3;

	var input, effect;
	input=In.ar(ibs);
	input= input+ LocalIn.ar(2); //add some feedback
	effect= DelayN.ar(input,0.02,SinOsc.kr(flangefreq,0,0.005,0.005));
	LocalOut.ar(fdbk*effect);
	effect = effect * (amp-5).dbamp;
	/*	effect = Compander.ar(effect, effect,
	thresh: 0.2,
	slopeBelow: 2,
	slopeAbove: 0.5,
	clampTime: 0.01,
	relaxTime: 0.01
	);*/
   effect = effect * (amp-6).dbamp;
	Out.ar(obs, effect);
}).add;

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