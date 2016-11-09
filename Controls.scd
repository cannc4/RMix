"multitrackclose.scd".loadRelative;

////////////// Dub-Echo  /////////////////////
~dubecho1 = Synth.after(~ar1,\dubecho, [\ibs,~recBus1],~gr1);
~dubecho2 = Synth.after(~ar2,\dubecho, [\ibs,~recBus2],~gr2);
~dubecho3 = Synth.after(~ar3,\dubecho, [\ibs,~recBus3],~gr3);
~dubecho4 = Synth.after(~ar4,\dubecho, [\ibs,~recBus4],~gr4);
~dubecho5 = Synth.after(~ar5,\dubecho, [\ibs,~recBus5],~gr5);
~dubecho6 = Synth.after(~ar6,\dubecho, [\ibs,~recBus6],~gr6);
~dubecho7 = Synth.after(~ar7,\dubecho, [\ibs,~recBus7],~gr7);
~dubecho8 = Synth.after(~ar8,\dubecho, [\ibs,~recBus8],~gr8);

~dubecho1.free;
~dubecho2.set(\ibs, nil,\ofBool, 0);
~dubecho2.free;
~dubecho3.set(\ibs, nil,\ofBool, 0);
~dubecho4.free;
~dubecho5.free;
~dubecho6.set(\ibs, nil,\ofBool, 0);
~dubecho6.free;
~dubecho7.set(\ibs, nil,\ofBool, 0);

~dubecho7.free;
~dubecho8.set(\ibs, nil,\ofBool, 0);
~dubecho8.free;

////Template////
~dubecho3.set(\sep, 0.000012);
~dubecho2.set(\fb, 0.95);
~dubecho2.set(\length, 0.17);
~dubecho3.set(\amp,3);
~dubecho7.set(\amp,10);
~scene3.play
~scene3.stop

~scene3 = Task({
	var delta;

delta = rrand(0.1, 1) * 3;
loop{
~dubecho6 = Synth.after(~ar6,\dubecho, [\ibs,~recBus6],~gr6);
		delta.wait;
		~dubecho6.set(\length, delta);

		delta.yield;
		delta*4.wait;
		~dubecho6.set(\ibs, nil,\ofBool, 0);

		10.wait;
		~dubecho6.free;

		3.wait;

}});
//---------------------------------------------------------------------//
////////////// Static-Reverb  /////////////////////
~nReverb1 = Synth.after(~ar1,\nReverb, [\ibs, ~recBus1], ~gr1);
~nReverb2 = Synth.after(~ar2,\nReverb, [\ibs, ~recBus2], ~gr2);
~nReverb3 = Synth.after(~ar3,\nReverb, [\ibs, ~recBus3], ~gr3);
~nReverb4 = Synth.after(~ar4,\nReverb, [\ibs, ~recBus4], ~gr4);
~nReverb5 = Synth.after(~ar5,\nReverb, [\ibs, ~recBus5], ~gr5);
~nReverb6 = Synth.after(~ar6,\nReverb, [\ibs, ~recBus6], ~gr6);
~nReverb7 = Synth.after(~ar7,\nReverb, [\ibs, ~recBus7], ~gr7);
~nReverb8 = Synth.after(~ar8,\nReverb, [\ibs, ~recBus8], ~gr8);

~nReverb1.free;
~nReverb1.set(\ibs, nil, \ofBool,0);
~nReverb2.set(\ibs, nil, \ofBool,0.9);
~nReverb2.free;
~nReverb3.set(\ibs, nil, \ofBool,0);
~nReverb3.free;
~nReverb4.free;
~nReverb5.free;
~nReverb6.free;
~nReverb6.set(\ibs, nil, \ofBool,0);
~nReverb6.set(\ibs, nil, \ofBool,0);
~nReverb7.set(\ibs, nil, \ofBool,0);
~nReverb7.free;

~nReverb8.set(\ibs, nil, \ofBool,0);
~nReverb8.free;


//---------------------------------------------------------------------//
////////////// Delay-LL /////////////////////
~delayll1 = Synth.after(~ar1,\delayll, [\ibs,~recBus1],~gr1);
~delayll2 = Synth.after(~ar2,\delayll, [\ibs,~recBus2],~gr2);
~delayll3 = Synth.after(~ar3,\delayll, [\ibs,~recBus3],~gr3);
~delayll4 = Synth.after(~ar4,\delayll, [\ibs,~recBus4],~gr4);
~delayll5 = Synth.after(~ar5,\delayll, [\ibs,~recBus5],~gr5);
~delayll6 = Synth.after(~ar6,\delayll, [\ibs,~recBus6],~gr6);
~delayll7 = Synth.after(~ar7,\delayll, [\ibs,~recBus7],~gr7);
~delayll8 = Synth.after(~ar8,\delayll, [\ibs,~recBus8],~gr8);

~delayll1.free;
~delayll2.set(\ibs, nil, \ofBool,0);
~delayll3.set(\ibs, nil, \ofBool,0);
~delayll2.free;
~delayll3.free;
~delayll4.free;
~delayll5.free;
~delayll6.set(\ibs, nil, \ofBool,0);
~delayll6.free;
~delayll7.free;
~delayll8.set(\ibs, nil, \ofBool,0);
~delayll8.free;

////Template////
b = Routine(
1.do(
~delayll7.set( \out, 0, \gate, 1, \freqHP, 2000,\freqLP, 9000, \filtRes, 0.2 ,\delme, 0.2, \delRes, 0.2 ,\delRez, 2, \delFlt, 2000,\delTim , 0.5 ,\delFed , 0.9 ,\lfoFrq , 10, \lfoAmt , 2, \dryWet , 1 , \lagKarme , 0.2);
0.5.wait;
~delayll6.set( \out, 0, \gate, 1, \freqHP, 500,\freqLP,1000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 6000,\delTim , 0.2 ,\delFed , 0.1 ,\lfoFrq , 1.5, \lfoAmt , 1, \dryWet , 1 , \lagKarme , 0.5);
0.5.wait;
~delayll7.set( \out, 0, \gate, 1, \freqHP, 10,\freqLP, 8000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 60000,\delTim , 1.5 ,\delFed , 1.5 ,\lfoFrq , 1000, \lfoAmt , 0.4, \dryWet , 1 , \lagKarme , 0.5);

);
);
//---------------------------------------------------------------------//