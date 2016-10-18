//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////  SYNTHDEFS  //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(




// ~grainBuf = Buffer.readChannel(s,"/Users/canince/Desktop/Rudeboy_247Long.wav", channels: [0]);
// SynthDef(\granular_sampling, {arg trigger = 0, obs = 0, graindur = 0.2, sndbuf, transp = 1, pos = 0, pan = 0, envbuf = -1, amp = 1, gate = 1;
// 	var env, snd;
// 	env = EnvGen.kr(Env.asr, gate, levelScale: amp, doneAction: 2);
// 	snd = GrainBuf.ar(
// 		numChannels: 2,
// 		trigger: Impulse.kr(trigger),
// 		dur: graindur,
// 		sndbuf: sndbuf,
// 		rate: transp,
// 		pos: pos,
// 		pan: pan,
// 	envbufnum: envbuf);
// 	Out.ar(obs, snd * env);
// }).add;
//
// SynthDef(\granularDiskout, {arg bufnum;
// 	var input = (-8).dbamp * In.ar(~recBus1.index);
// 	DiskOut.ar(bufnum, input);
// }).add;

// SynthDef(\masterTape,{ arg out = 0, in = ~masterTape;
// 	var input =  In.ar(in);
// 	Out.ar(0, input.dup);
// }).add;

~recBus1 = Bus.audio(s,1);
SynthDef(\AR1, { arg in=2;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	Out.ar(~recBus1, input);

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
	Out.ar(~recBus2, input);
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
	Out.ar(~recBus3, input);

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
	Out.ar(~recBus4, input);

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
	Out.ar(~recBus5, input);


}).add;
SynthDef(\AR5Diskout, {arg out=0, bufnum;
	var input = In.ar(~recBus5);
	DiskOut.ar(bufnum, input);
		Out.ar(out, input.dup);
}).add;

////////////////////////////////////////////////
~recBus6 = Bus.audio(s,1);

SynthDef(\AR6, { arg  in=7;
	var input;
	input = SoundIn.ar(in);
	input = (-8).dbamp * input;
	Out.ar(~recBus6, input);

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
	input = (-8).dbamp * input;
	Out.ar(~recBus7, input);

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
	input = (-8).dbamp * input;
	Out.ar(~recBus8, input);

}).add;
SynthDef(\AR8Diskout, {arg  out=0,bufnum;
	var input = In.ar(~recBus8);
	DiskOut.ar(bufnum, input);
		Out.ar(out, input.dup);
}).add;



//////////////////////////////////// FX START ////////////////////////////////////



// chain1 = PV_MagFreeze( chain1, freeze );
// chain1 = PV_BinShift(chain1, 1, chain2);
// chain1 = PV_XFade(chain1, popFreq, 2 );
// var popFreq = EnvGen.ar(Env([3261, 410, 1000], [0.005, 0.01], curve: \exp));

SynthDef(\delayll, {arg ibs,  gate= 1, freqHP= 20, freqLP= 20000, filtRes=0.5, delme = 0.003, delRes = 0.6, delRez = 0.22,
	delFlt = 10000, delTim = 2 ,delFed = 0.5, lfoFrq = 1, lfoAmt = 1, dryWet = 0.5, lagKarme = 0.12;

	var source, limiting, rhpf, rlpf, delayHotLine, delayFiltLine,	delayLFOLine, delayDryWet;
	source = In.ar(ibs);
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
//	Out.ar(~recBus10, delayDryWet);
	ReplaceOut.ar(ibs, delayDryWet);
}).add;

///////////////////////////////////////////////////////////////////////////

SynthDef(\freeze,  { arg freeze = 1.1, ibs, freq=200, bufSize = 8192;
	var chain1, chain2, output, inp,temp;
	inp  = In.ar(ibs,2).asArray;
	temp =  Pulse.ar(freq, 0.56, 0.90);
	chain1 = FFT( LocalBuf( bufSize ! 2 ), inp );
	chain2 = FFT( LocalBuf( bufSize ! 2 ), temp);
	chain1 = PV_BrickWall( chain1, chain2 );
	output = IFFT( chain1 ).dup;
//	output = Pan2.ar(output,  FSinOsc.kr(2), 1, 0);

	ReplaceOut.ar( ibs, output);
}).add;

///////////////////////////////////////////////////////////////////////////



SynthDef(\ringMod, {arg ibs, carrFreq = 440, modFreq = 2, amp = 0.06, which = 0;
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
	// /Out.ar( ~recBus11, output);
ReplaceOut.ar( ibs, output);
}).add;
///////////////////////////////////////////////////////////////////////////


SynthDef(\nReverb,{arg ibs, maxDelay=0.181, preDelay=0.08, decay=2, numRefl=8, random=0.1;

   var numChan=2;
	var sig, new, dlys;
	#numChan, maxDelay, preDelay, decay, numRefl, random = #[5, 0.181, 0.08, 2, 8, 0.1];
   sig = In.ar(ibs);
   new = sig;
   dlys = Array.fill(numRefl, {
      new = AllpassN.ar(new, maxDelay,
         Array.fill(numChan, { random.rand }) + preDelay, decay);
   });
	 Mix.ar(dlys * Array.series(numRefl, 1, (numRefl+1).reciprocal.neg));
	ReplaceOut.ar(ibs, dlys);
}).add;
///////////////////////////////////////////////////////////////////////////
~dlybuf = Buffer.alloc(s, 6.05 * s.sampleRate, 1);
SynthDef(\blipDelay, { arg ibs, bufnum=~dlybuf, t_repan=1;


   var dly, dtime, sig, newdly, bufRate;
	bufnum = ~dlybuf;
   sig = In.ar(ibs, 2);
      // this technique is borrowed from MultiTap
   RecordBuf.ar(Mix.ar(sig) * 0.7, bufnum, 0, run:-1);
   bufRate = BufSampleRate.kr(bufnum);
   dtime = 0;
   dly = Mix.arFill(3, { |i|
      dtime = dtime + rrand(0.5, 2);
      dly = PlayBuf.ar(1, bufnum, -1, startPos:dtime * bufRate, loop:1);
      Pan2.ar(LPF.ar(dly, 5000 - (i*2000)),
         TRand.kr(-1.0, 1.0, t_repan), (i+3).reciprocal);
   });
   ReplaceOut.ar(ibs, dly);
}).add;


////////////////////////////////////////////////////////////////////////////////

SynthDef(\dubecho,{ arg ibs, length = 1, fb = 0.8, sep = 0.012, amp = 1;
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
	magicL = magic * amp;
//	Out.ar(~recBus12, magicL);
	ReplaceOut.ar(ibs,magicL);
}).add;

////////////////////////////////////////////////////////////////////////////


SynthDef(\audioPitchShiftDelay, { arg ibs,obs = 0, ratio = 1, delayTime = 0.05;
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
	retune2 =retune1+retune2;
	//Out.ar(~recBus13, [retune1+retune2, retune1+retune2]);
	ReplaceOut.ar(ibs,retune2);

}).add;

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
~ar2 = Synth(\AR2,~gr2);
~ar3 = Synth(\AR3,~gr3);
~ar4 = Synth(\AR4,~gr4);
~ar5 = Synth(\AR5,~gr5);
~ar6 = Synth(\AR6,~gr6);
~ar7 = Synth(\AR7,~gr7);
~ar8 = Synth(\AR8,~gr8);
~bpm= 140;
~metronome44 = TempoClock.new(~bpm / 60, 0, Main.elapsedTime.ceil);
        ~metronome44.schedAbs(0, {~metronome44.beatsPerBar_(4)});
        ~metronome34 = TempoClock.new(~bpm / 60, 0, Main.elapsedTime.ceil);
        ~metronome34.schedAbs(0, {~metronome34.beatsPerBar_(3)});
)