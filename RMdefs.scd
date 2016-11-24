
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////  SYNTHDEFS  //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(
<<<<<<< HEAD
<<<<<<< HEAD


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
=======

~recBus1 = Bus.audio(s,1);
~recBus2 = Bus.audio(s,1);
~recBus3 = Bus.audio(s,1);
~recBus4 = Bus.audio(s,1);
~recBus5 = Bus.audio(s,1);
~recBus6 = Bus.audio(s,1);
~recBus7 = Bus.audio(s,1);
~recBus8 = Bus.audio(s,1);
~recBus9 = Bus.audio(s,2);
~recBus10 = Bus.audio(s,2);
~recBus11 = Bus.audio(s,2);
~recBus12 = Bus.audio(s,2);
~recBus13 = Bus.audio(s,2);
~recBus14 = Bus.audio(s,2);
~recBus15 = Bus.audio(s,2);
~recBus16 = Bus.audio(s,2);
~b0= Bus.audio(s,2);
~b1 = Bus.audio(s,2);
~b2 = Bus.audio(s,2);
~b3 = Bus.audio(s,2);
~b4 = Bus.audio(s,2);
~b5 = Bus.audio(s,2);
~b6 = Bus.audio(s,2);
~b7 = Bus.audio(s,2);
~b0=0;

~grainBuf = Buffer.readChannel(s,"/Users/canince/Desktop/Rudeboy_247Long.wav", channels: [0]);
SynthDef(\granular_sampling, {arg trigger = 0, obs = 0, graindur = 0.2, sndbuf, transp = 1, pos = 0, pan = 0, envbuf = -1, amp = 1, gate = 1;
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
	Out.ar(obs, snd * env);
}).add;

SynthDef(\granularDiskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus1.index,1);
	DiskOut.ar(bufnum, input);
}).add;
SynthDef(\AR1, { arg out=0, in=2;
	var input;
	input = SoundIn.ar(in);

	input = (-10).dbamp * input;
	Out.ar(~recBus1, input);
	Out.ar(out, input.dup);

}).add;
SynthDef(\AR1Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus1.index,1);
=======


~recBus1 = Bus.audio(s,1);
SynthDef(\AR1, { arg in=2;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus1, input);

}).add;
SynthDef(\AR1Diskout, {arg out= 0,bufnum;
	var input =In.ar(~recBus1.index);
>>>>>>> master
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD

/////////////////////////////////////////////////

SynthDef(\AR2, { arg out=0, in=3;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus2.index, input);
	Out.ar(out, input.dup);
=======
>>>>>>> master

/////////////////////////////////////////////////
~recBus2 = Bus.audio(s,1);
SynthDef(\AR2, { arg in=3;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus2, input);
}).add;
<<<<<<< HEAD
SynthDef(\AR2Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus2.index,1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
=======
SynthDef(\AR2Diskout, {arg out = 0, bufnum;
	var input = In.ar(~recBus2.index);
>>>>>>> master
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD
<<<<<<< HEAD

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
=======
/////////////////////////////////////////////////

SynthDef(\AR3, { arg out=0, in=4;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus3.index, input);
	Out.ar(out, input.dup);
}).add;
SynthDef(\AR3Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus3.index,1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

/////////////////////////////////////////////////
<<<<<<< HEAD
~recBus3 = Bus.audio(s,1);

SynthDef(\AR3, { arg  in=4;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
=======
/////////////////////////////////////////////////
~recBus3 = Bus.audio(s,1);

SynthDef(\AR3, { arg  in=4;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
>>>>>>> master
	OffsetOut.ar(~recBus3, input);

}).add;
SynthDef(\AR3Diskout, {arg out=0,bufnum;
	var input =In.ar(~recBus3.index);
<<<<<<< HEAD
=======

SynthDef(\AR4, { arg out=0, in=5;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus4.index, input);
	Out.ar(out, input.dup);
}).add;
SynthDef(\AR4Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus4.index,1);
	DiskOut.ar(bufnum, input);
}).add;

////////////////////////////////////////////////

SynthDef(\AR5, { arg out=0, in=6;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus5, input);
	Out.ar(out, input.dup);

}).add;
SynthDef(\AR5Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus5, 1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD
=======
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

>>>>>>> master
/////////////////////////////////////////////////
~recBus4 = Bus.audio(s,1);

SynthDef(\AR4, { arg in=5;
	var input;
	input = SoundIn.ar(in);
<<<<<<< HEAD
	input = (-8).dbamp * input;
=======
	input = (-3).dbamp * input;
>>>>>>> master
	OffsetOut.ar(~recBus4, input);

}).add;
SynthDef(\AR4Diskout, {arg  out=0,bufnum;
	var input =In.ar(~recBus4.index);
<<<<<<< HEAD
=======
////////////////////////////////////////////////

SynthDef(\AR6, { arg out=0, in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus6, input);
	Out.ar(out, input.dup);
}).add;
SynthDef(\AR6Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus6,1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
=======
>>>>>>> master
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD
<<<<<<< HEAD
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
=======
///////////////////////////////////////////////

SynthDef(\AR7, { arg out=0, in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus7, input);
	Out.ar(out, input.dup);
}).add;
SynthDef(\AR7Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus7,1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD
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
=======
/////////////////////////////////////////////////////////////////////////////////

SynthDef(\AR8, { arg out=0, in=9;
	var input;
	input = SoundIn.ar(in);
	input = (-10).dbamp * input;
	Out.ar(~recBus8, input);
	Out.ar(out, input.dup);
}).add;
SynthDef(\AR8Diskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus8,1);
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

<<<<<<< HEAD
///////////////////////////////////////////////
0.2.wait;
~recBus7 = Bus.audio(s,1);
=======


//////////////////////////////////// FX START ////////////////////////////////////

=======
////////////////////////////////////////////////
~recBus5 = Bus.audio(s,1);

SynthDef(\AR5, { arg  in=6;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus5, input);
>>>>>>> master


// chain1 = PV_MagFreeze( chain1, freeze );
// chain1 = PV_BinShift(chain1, 1, chain2);
// chain1 = PV_XFade(chain1, popFreq, 2 );
// var popFreq = EnvGen.ar(Env([3261, 410, 1000], [0.005, 0.01], curve: \exp));

SynthDef(\delayll, {|out =0  gate= 1 freqHP= 20 freqLP= 20000 filtRes=0.5 delme = 0.003 delRes = 0.6 delRez = 0.22
	delFlt = 10000 delTim = 2 delFed = 0.5 lfoFrq = 1 lfoAmt = 1 dryWet = 0.5 lagKarme = 0.12
	|
	var source, limiting, rhpf, rlpf, delayHotLine, delayFiltLine,	delayLFOLine, delayDryWet;
	source = In.ar(~b1);
	source = LeakDC.ar(source);
	rhpf = BHiPass.ar(source, Lag3.kr(freqHP, 0.07), filtRes);
	rlpf = BLowPass.ar(rhpf, Lag3.kr(freqLP, 0.07), filtRes);
	rlpf = Streson.ar(rlpf, delme.reciprocal, delRes);
	rlpf = LeakDC.ar(rlpf);
	delayLFOLine = SinOsc.ar(lfoFrq, mul: lfoAmt, add: delFlt);
	delayFiltLine = IIRFilter.ar(rlpf, Lag2.ar(Fold.ar(delayLFOLine,10,20000),lagKarme),delRez);
	delayHotLine = CombC.ar(delayFiltLine, Lag2.kr(delTim,1.9), Lag2.kr(delTim,1.9),delFed);
	delayDryWet = XFade2.ar(rlpf,delayHotLine,dryWet);
	DetectSilence.ar(delayDryWet, time: 4, doneAction:2);
	Out.ar(~recBus10, delayDryWet);
	Out.ar(out, [delayDryWet,delayDryWet]);

}).add;
SynthDef(\AR5Diskout, {arg out=0, bufnum;
	var input = In.ar(~recBus5);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

SynthDef(\delayDiskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus10,2);
	DiskOut.ar(bufnum, input);
}).add;


///////////////////////////////////////////////////////////////////////////

SynthDef(\freeze,  { arg freeze = 1.1, obs= 0, ibs= ~b2, freq=200, bufSize = 8192;
	var chain1, chain2, output, inp,temp;
	inp  = In.ar(ibs,2).asArray;
	temp =  Pulse.ar(freq, 0.56, 0.90);
	chain1 = FFT( LocalBuf( bufSize ! 2 ), inp );
	chain2 = FFT( LocalBuf( bufSize ! 2 ), temp);
	chain1 = PV_BrickWall( chain1, chain2 );
	output = IFFT( chain1 ).dup;
	output = Pan2.ar(output,  FSinOsc.kr(2), 1, 0);
	output = (5).dbamp * output;
	Out.ar( ~recBus9, output);
	Out.ar( obs, output);
}).add;
SynthDef(\freezeDiskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus9,2);
	DiskOut.ar(bufnum, input);
}).add;

<<<<<<< HEAD
///////////////////////////////////////////////////////////////////////////

=======
////////////////////////////////////////////////

~recBus6 = Bus.audio(s,1);
>>>>>>> master

SynthDef(\AR6, { arg  in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus6, input);

<<<<<<< HEAD
SynthDef(\ringMod, {arg ibs=~b3, obs=0, carrFreq = 440, modFreq = 2, amp = 0.06, which = 0;
	var carrier, modulator, input, chain1, chain2, output;
	input = In.ar(ibs);
	carrier = Select.ar(which,
		[
			SinOsc.ar(Lag.kr(carrFreq)),
			Blip.ar(Lag.kr(carrFreq), 5),
			Saw.ar(Lag.kr(carrFreq))
	]);
	modulator = SinOsc.ar(Lag.kr(modFreq));
	output = (10).dbamp*( carrier * input );
	DetectSilence.ar(output, time: 4, doneAction:2);
	Out.ar( ~recBus11, output);
	Out.ar( obs, output.dup);
}).add;
SynthDef(\ringModDiskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus11,2);
	DiskOut.ar(bufnum, input);
}).add;

////////////////////////////////////////////////////////////////////////////////
//
// SynthDef(\dubecho,{ arg ibs=~b4, obs=0 , length = 1, fb = 0.8, sep = 0.012, amp = 1;
// 	var input = In.ar(ibs);
// 	var magic;var real = 0.2;
// 	var imag = 0.8;
// 	var magicL;
// 	var fft = 0.5;
// 	var output = input + Fb({
// 		arg feedback;
// 		var left,right;
// 		magic = LeakDC.ar(feedback*fb + input);
// 		magic = HPF.ar(magic, 400);
// 		magic = LPF.ar(magic, 5000);
// 		magic = magic.tanh;
// 		#left, right = magic;
// 		magic = [DelayC.ar(left, 1, LFNoise2.ar(12).range(0,sep)), DelayC.ar(right, 1, LFNoise2.ar(12).range(sep,0))];
// 	},length);
// 	magicL = magic * (amp-6).dbamp;
// 	Out.ar(~recBus12, magicL);
// 	Out.ar(obs,magicL);
// }).add;
// SynthDef(\dubechoDiskout, {arg bufnum;
// 	var input = (-10).dbamp * In.ar(~recBus12,1);
// 	DiskOut.ar(bufnum, input);
// }).add;

////////////////////////////////////////////////////////////////////////////


SynthDef(\audioPitchShiftDelay, { arg ibs = ~b5 ,obs = 0, ratio = 1, delayTime = 0.05;
	var in, retune1, retune2, delayMod, trig, samplePeriod, transNumber;
	var window, start, end, rate;
	in = In.ar(ibs);
	rate = (1 - ratio ) * SampleRate.ir.reciprocal;
	start = 0.0;
	end = delayTime;
	delayMod = Phasor.ar( 0, rate, start, end);
	window = SinOsc.ar(ratio*delayTime.reciprocal,3pi/2, 0.5, 0.5);
	retune1 = DelayC.ar( in, 0.3, delayMod ) * window;
	retune2 = DelayC.ar( retune1, 0.5, (ratio/delayTime).reciprocal*0.5 );

	Out.ar(~recBus13, [retune1+retune2, retune1+retune2]);
	Out.ar(obs, [retune1+retune2, retune1+retune2]);

}).add;

SynthDef(\audioPitchShiftDelayDiskout, {arg bufnum;
	var input = (-10).dbamp * In.ar(~recBus13,2);
	DiskOut.ar(bufnum, input);
}).add;

////////////////////////////////////////////////////////////////////////////















// SynthDef(\reverb2, {arg ibs, obs=0, delaytime=0.01, decaytime=1, amp=1;
// 	var input;
// 	var numc,numa,temp;
// 	input=In.ar(ibs);
// 	numc = 4; // number of comb delays
// 	numa = 12; // number of allpass delays
// 	temp = DelayN.ar(input, 0.50,0.050);
// 	temp=Mix.fill(numc,{CombL.ar(temp,0.1,rrand(0.1, 0.2),5)});
// 	numa.do({ temp = AllpassN.ar(temp, 0.49, [rrand(0.01, 0.02),rrand(0.01, 0.02)], 1) });
// 	temp = temp * (amp-5).dbamp;
// 	Out.ar(obs,temp);
// }).add;
// SynthDef(\reverb, {
// 	arg		amp=1, lPos=0, mix=0.085, revTime=1.8, preDel=0.1, ibs, obs;
// 	var		sig, verbSig, totalSig, outSig;
//
// 	//no wacky values please
// 	mix = mix.clip(0,1);
//
// 	sig = In.ar(ibs);
//
// 	//pre-delay
// 	verbSig = DelayN.ar(sig, preDel, preDel);
//
// 	totalSig = 0;
// 	12.do{
// 		verbSig = AllpassN.ar(verbSig, 0.06, {Rand(0.001,0.06)}!2, revTime);
// 		verbSig = LPF.ar(verbSig, 4500);
// 		totalSig = totalSig + verbSig;
// 	};
//
// 	//dry/wet mix
// 	totalSig = XFade2.ar(sig, totalSig, mix.linlin(0,1,-1,1));
//
// 	outSig = totalSig * amp;
// 	Out.ar(obs, outSig);
// }).add;



>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97

SynthDef(\AR7, { arg in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	OffsetOut.ar(~recBus7, input);

<<<<<<< HEAD
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





=======
}).add;
SynthDef(\AR6Diskout, {arg out=0,bufnum;
	var input =  In.ar(~recBus6);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

///////////////////////////////////////////////

~recBus7 = Bus.audio(s,1);

SynthDef(\AR7, { arg in=8;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus7, input);

}).add;
SynthDef(\AR7Diskout, {arg out=0,bufnum;
	var input =In.ar(~recBus7);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;

/////////////////////////////////////////////////////////////////////////////////

~recBus8 = Bus.audio(s,1);
SynthDef(\AR8, { arg in=9;
	var input;
	input = SoundIn.ar(in);
	input = (-3).dbamp * input;
	OffsetOut.ar(~recBus8, input);

}).add;
SynthDef(\AR8Diskout, {arg  out=0,bufnum;
	var input = In.ar(~recBus8);
	DiskOut.ar(bufnum, input);
	Out.ar(out, input.dup);
}).add;


0.2.wait;
>>>>>>> master

/////////////////////////////////////////////// /////////////////////////////
~gr1 = Group.new;
~gr2 = Group.new;
~gr3 = Group.new;
~gr4 = Group.new;
~gr5 = Group.new;
~gr6 = Group.new;
~gr7 = Group.new;
~gr8 = Group.new;
<<<<<<< HEAD
~ar1 = Synth(\AR1,~gr1);
~ar2 = Synth(\AR2,~gr2, addAction: \addToHead);
~ar3 = Synth(\AR3,~gr3);
~ar4 = Synth(\AR4,~gr4);
~ar5 = Synth(\AR5,~gr5);
~ar6 = Synth(\AR6,~gr6);
~ar7 = Synth(\AR7,~gr7);
~ar8 = Synth(\AR8,~gr8);
=======



~ar1 = Synth.head(~gr1,\AR1);
~ar2 = Synth.head(~gr2,\AR2);
~ar3 = Synth.head(~gr3,\AR3);
~ar4 = Synth.head(~gr4,\AR4);
~ar5 = Synth.head(~gr5,\AR5);
~ar6 = Synth.head(~gr6,\AR6);
~ar7 = Synth.head(~gr7,\AR7);
~ar8 = Synth.head(~gr8,\AR8);


0.2.wait;


~gfx11 = Group.new(~gr1, \addToTail);
~gfx12 = Group.new(~gr1, \addToTail);
~gfx13 = Group.new(~gr1, \addToTail);
~gfx14 = Group.new(~gr1, \addToTail);
~gfx21 = Group.new(~gr2, \addToTail);
~gfx22 = Group.new(~gr2, \addToTail);
~gfx23 = Group.new(~gr2, \addToTail);
~gfx24 = Group.new(~gr2, \addToTail);
~gfx31 = Group.new(~gr3, \addToTail);
~gfx32 = Group.new(~gr3, \addToTail);
~gfx33 = Group.new(~gr3, \addToTail);
~gfx34 = Group.new(~gr3, \addToTail);
~gfx41 = Group.new(~gr4, \addToTail);
~gfx42 = Group.new(~gr4, \addToTail);
~gfx43 = Group.new(~gr4, \addToTail);
~gfx44 = Group.new(~gr4, \addToTail);
~gfx51 = Group.new(~gr5, \addToTail);
~gfx52 = Group.new(~gr5, \addToTail);
~gfx53 = Group.new(~gr5, \addToTail);
~gfx54 = Group.new(~gr5, \addToTail);
~gfx61 = Group.new(~gr6, \addToTail);
~gfx62 = Group.new(~gr6, \addToTail);
~gfx63 = Group.new(~gr6, \addToTail);
~gfx64 = Group.new(~gr6, \addToTail);
~gfx71 = Group.new(~gr7, \addToTail);
~gfx72 = Group.new(~gr7, \addToTail);
~gfx73 = Group.new(~gr7, \addToTail);
~gfx74 = Group.new(~gr7, \addToTail);
~gfx81 = Group.new(~gr8, \addToTail);
~gfx82 = Group.new(~gr8, \addToTail);
~gfx83 = Group.new(~gr8, \addToTail);
~gfx84 = Group.new(~gr8, \addToTail);


0.2.wait;

>>>>>>> master
~bpm= TempoClock(100/60);
~metronome44 = TempoClock.new(~bpm, 0, Main.elapsedTime.ceil);
~metronome44.schedAbs(0, {~metronome44.beatsPerBar_(4)});
~metronome34 = TempoClock.new(~bpm , 0, Main.elapsedTime.ceil);
~metronome34.schedAbs(0, {~metronome34.beatsPerBar_(3)});


<<<<<<< HEAD
=======

>>>>>>> master
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
<<<<<<< HEAD
"multitrack.scd".loadRelative;
)
=======

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


// b = Buffer.alloc(s,s.sampleRate/(s.options.blockSize),1);
//
// SynthDef(\RecordBuf, { arg inbus, bufnum = 0, trigger = 1;
// 	inbus= SoundIn.ar;	//temp testing - remove later
// 	RecordBuf.ar(inbus, bufnum, run: trigger, trigger: 0, loop: 1, doneAction: 2);
// }).add;
//
// SynthDef(\playback, { arg obs = 0, bufnum = 0, atk= 0.01, rel= 0.1;
// 	var env= EnvGen.ar(Env.linen(atk, BufDur.ir(bufnum)-atk-rel, rel), doneAction:2);
// 	var src= PlayBuf.ar(1, bufnum);
// 	Out.ar(obs, Pan2.ar(src*env));
// }).add;
//



/////////////////////////////////// FX END //////////////////////////////////////////

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
//
// ~rytmGroup = Group.new(s);
// ~fxGroup = Group.after(~rytmGroup);
// ~delay = Synth(\delay, ~fxgroup);
// ~dubecho = Synth(\dubecho, ~fxgroup);
// ~freeze = Synth(\freeze, ~fxgroup);
// ~ringMod = Synth(\ringMod, ~fxgroup);

~ar1 = Synth(\AR1);
~ar2 = Synth(\AR2);
~ar3 = Synth(\AR3);
~ar4 = Synth(\AR4);
~ar5 = Synth(\AR5);
~ar6 = Synth(\AR6);
~ar7 = Synth(\AR7);
~ar8 = Synth(\AR8);

/*~ar1.set(\out, ~b0);
~ar2.set(\out, ~b0);
~ar3.set(\out, ~b0);
~ar4.set(\out, ~b0);
~ar5.set(\out, ~b0);
~ar6.set(\out, ~b0);
~ar7.set(\out, ~b0);
~ar8.set(\out, ~b0);*/
>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
)
=======

0.5.wait;

"multitrack.scd".loadRelative;
)
)

>>>>>>> master
