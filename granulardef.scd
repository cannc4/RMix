//TGrain
//GrainSin, GrainFM, GrainBuf, GrainIn, Warp1
//PitchShift
//FFT - PV


////////GRAINSIN/////////////
(
var winenv;
// a custom envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\sin_grain_test, {arg gate = 1, amp = 1, envbuf;
    var pan, env, freqdev;
    // use mouse x to control panning
    pan = MouseX.kr(-1, 1);
    // use WhiteNoise and mouse y to control deviation from center pitch
    freqdev = WhiteNoise.kr(MouseY.kr(0, 400));
    env = EnvGen.kr(
        Env([0, 1, 0], [1, 1], \sin, 1),
        gate,
        levelScale: amp,
        doneAction: 2);
    Out.ar(0,
        GrainSin.ar(2, Impulse.kr(10), 0.1, 440 + freqdev, pan, envbuf) * env)
    }).add;

)
s.scope
// use built-in env
x = Synth(\sin_grain_test, [\envbuf, -1])

// switch to the custom env
x.set(\envbuf, z)
x.set(\envbuf, -1);

x.set(\gate, 0);

////////GRAININ/////////////

(
var winenv;
// a custom envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\in_grain_test, {arg gate = 1, amp = 1, envbuf;
    var pan, env;
    // use mouse x to control panning
    pan = MouseX.kr(-1, 1);
    env = EnvGen.kr(
        Env([0, 1, 0], [1, 1], \sin, 1),
        gate,
        levelScale: amp,
        doneAction: 2);
    Out.ar(0,
        GrainIn.ar(2, Impulse.kr(32), 1, PinkNoise.ar * 0.05, pan, envbuf) * env)
    }).send(s);

)

// use built-in env
x = Synth(\in_grain_test, [\envbuf, -1])

// switch to the custom env
x.set(\envbuf, z)
x.set(\envbuf, -1);

x.set(\gate, 0);


////////WARP1/////////////

(
var winenv;
// a custom envelope - not a very good one, but you can hear the difference between this
// and the default
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
b = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\warp, {arg buffer = 0, envbuf = -1;
    var out, pointer, filelength, pitch, env, dir;
    // pointer - move from beginning to end of soundfile over 15 seconds
    pointer = Line.kr(0, 1, 15);
    // control pitch with MouseX
    pitch = MouseX.kr(0.5, 2);
    env = EnvGen.kr(Env([0.001, 1, 1, 0.001], [0.1, 14, 0.9], 'exp'), doneAction: 2);
    out = Warp1.ar(1, buffer, pointer, pitch, 0.1, envbuf, 8, 0.1, 2);
    Out.ar(0, out * env);
}).send(s);

)

// use built-in env
x = Synth(\warp, [\buffer, b, \envbuf, -1])

// switch to the custom env
x.set(\envbuf, z)
x.set(\envbuf, -1);

x.free;


(
b.free;
b= Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");
SynthDef(\warp2, {|buffer|
    var pointer = Phasor.ar(0, SampleDur.ir/BufDur.ir(buffer)*XLine.kr(1, 0.25, 20));
    var out = Warp1.ar(1, buffer, pointer, 1, 0.3, -1, 16, Line.kr(0, 1, 40), 4);
    Out.ar(0, Pan2.ar(out, pointer*2-1, 0.25));
}).add;
)
x = Synth(\warp2, [\buffer, b])
x.free
b.free


////////////GRAINFM//////////////


(
var winenv;
// a custom envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\fm_grain_test, {arg gate = 1, amp = 1, envbuf;
    var pan, env, freqdev;
    // use mouse x to control panning
    pan = MouseX.kr(-1, 1);
    // use WhiteNoise and mouse y to control deviation from center pitch
    freqdev = WhiteNoise.kr(MouseY.kr(0, 400));
    env = EnvGen.kr(
        Env([0, 1, 0], [1, 1], \sin, 1),
        gate,
        levelScale: amp,
        doneAction: 2);
    Out.ar(0,
        GrainFM.ar(2, Impulse.kr(10), 0.1, 440 + freqdev, 200, LFNoise1.kr.range(1, 10),
            pan, envbuf) * env)
    }).send(s);

)

// use built-in env
x = Synth(\fm_grain_test, [\envbuf, -1])

// switch to the custom env
x.set(\envbuf, z)
x.set(\envbuf, -1);

x.set(\gate, 0);



//////////////////////