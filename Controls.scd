//Stop Recording
"multitrackclose.scd".loadRelative;

//---------------------Delay controls ---------------------//
////////////// Dub-Echo  /////////////////////

~dbecho1 = Synth.head(~gfx11, \dubecho, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~dbecho2 = Synth.head(~gfx21, \dubecho, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~dbecho3 = Synth.head(~gfx31, \dubecho, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~dbecho4 = Synth.head(~gfx41, \dubecho, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~dbecho5 = Synth.head(~gfx51, \dubecho, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~dbecho6 = Synth.head(~gfx61, \dubecho, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~dbecho7 = Synth.head(~gfx71, \dubecho, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~dbecho8 = Synth.head(~gfx81, \dubecho, [\ibs,~recBus8, \defNum, ~evalNum.value]);


////Template////

//multiple control

b = Bus.control(s, 1);
b.set(0.1);
~gfx21.map(\sep, b);
~gfx21.map(\ibs, nil,\ofBool, 0);

////Loop////
~modloop.stop;

~modloop.start;

~modloop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~dbecho6 = Synth.head(~gfx61, \dubecho, [\ibs,~recBus6, \defNum, ~evalNum.value]);
		delta.wait;
		b.set(delta);
				~dbecho1 = Synth.head(~gfx11, \dubecho, [\ibs,~recBus1, \defNum, ~evalNum.value]);
		~gfx61.map(\length, b);
		delta.yield;
		delta*4.wait;

		10.wait;
				~gfx11.map(\length, b);
		3.do{
			~dbecho6 = Synth.head(~gfx61, \dubecho, [\ibs,~recBus6, \defNum, ~evalNum.value]);};
				1.5.wait;
		~gfx11.freeAll;
				1.wait;

		delta.yield;
				~gfx61.freeAll;
		0.2.wait;
}});

//---------------------------------------------------------------------//

//////////////////////// Delay-LL /////////////////////////////////

~dll1 = Synth.head(~gfx21, \delayll, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~dll2 = Synth.head(~gfx22, \delayll, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~dll3 = Synth.head(~gfx32, \delayll, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~dll4 = Synth.head(~gfx42, \delayll, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~dll5 = Synth.head(~gfx52, \delayll, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~dll6 = Synth.head(~gfx62, \delayll, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~dll7 = Synth.head(~gfx72, \delayll, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~dll8 = Synth.head(~gfx82, \delayll, [\ibs,~recBus8, \defNum, ~evalNum.value]);

~gfx22.freeAll
////Templates////

//multiple control
while( { counter &lt; 10; }, { "repeat".postln; counter = counter + 1; } );
if(~dll2.query.next == -1){

b = Bus.control(s, 1);
b.set(0.1);
~gfx22.map(\sep, b);
~gfx82.map(\ibs, nil,\ofBool, 0);

~modloop2.stop;

~modloop2.play;

~modloop2 = Task({
	var delta = rrand(0.1,1);
	loop{

~gfx22.map( \out, 0, \gate, 1, \freqHP, 2000,\freqLP, 9000, \filtRes, 0.2 ,\delme, 0.2, \delRes, 0.2 ,\delRez, 2, \delFlt, 2000,\delTim , 0.5 ,\delFed , 0.9 ,\lfoFrq , 10, \lfoAmt , 2, \dryWet , 1 , \lagKarme , 0.2);
0.5.wait;
~gfx22.map( \out, 0, \gate, 1, \freqHP, 500,\freqLP,1000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 6000,\delTim , 0.2 ,\delFed , 0.1 ,\lfoFrq , 1.5, \lfoAmt , 1, \dryWet , 1 , \lagKarme , 0.5);
0.5.wait;
~gfx22.map( \out, 0, \gate, 1, \freqHP, 10,\freqLP, 8000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 60000,\delTim , 1.5 ,\delFed , 1.5 ,\lfoFrq , 1000, \lfoAmt , 0.4, \dryWet , 1 , \lagKarme , 0.5);
		delta.yield;
		}
});



//---------------------------------------------------------------------//

//---------------------Reverb controls ---------------------//

///////////////////////// Static-Reverb /////////////////////////////////
~nrv1 = Synth.head(~gfx13, \nReverb, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~nrv2 = Synth.head(~gfx23, \nReverb, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~nrv3 = Synth.head(~gfx33, \nReverb, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~nrv4 = Synth.head(~gfx43, \nReverb, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~nrv5 = Synth.head(~gfx53, \nReverb, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~nrv6 = Synth.head(~gfx63, \nReverb, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~nrv7 = Synth.head(~gfx73, \nReverb, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~nrv8 = Synth.head(~gfx83, \nReverb, [\ibs,~recBus8, \defNum, ~evalNum.value]);
////Template////

//multiple control

b = Bus.control(s, 1);
b.set(0.1);
~gfx23.map(\sep, b);
~gfx23.map(\ibs, nil,\ofBool, 0);

////Loop////
~mod3loop.stop;

~mod3loop.start;

~mod3loop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~nrv2 = Synth.head(~gfx23, \nReverb, [\ibs,~recBus2, \defNum, ~evalNum.value]);
		delta.wait;
		b.set(delta);

		delta.yield;
		delta*4.wait;

		10.wait;
		3.do{
			~nrv2 = Synth.head(~gfx23, \nReverb, [\ibs,~recBus2, \defNum, ~evalNum.value]);};
				1.5.wait;

				1.wait;

		delta.yield;
				~gfx23.freeAll;
		0.2.wait;
}});

//---------------------------------------------------------------------//

////////////////////////// GVerb /////////////////////////////////

~crv1 = Synth.head(~gfx14, \GVReverb, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~crv2 = Synth.head(~gfx24, \GVReverb, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~crv3 = Synth.head(~gfx34, \GVReverb, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~crv4 = Synth.head(~gfx44, \GVReverb, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~crv5 = Synth.head(~gfx54, \GVReverb, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~crv6 = Synth.head(~gfx64, \GVReverb, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~crv7 = Synth.head(~gfx74, \GVReverb, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~crv8 = Synth.head(~gfx84, \GVReverb, [\ibs,~recBus8, \defNum, ~evalNum.value]);

b = Bus.control(s, 1);
b.set(0.1);
~gfx74.map(\taillevel, b);
~gfx74.map(\ibs, nil,\ofBool, 0);

////Loop////
~mod4loop.stop;

~mod4loop.start;

~mod4loop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~crv7 = Synth.head(~gfx74, \nReverb, [\ibs,~recBus7, \defNum, ~evalNum.value]);
		delta.wait;
		b.set(delta);
		~crv6.map(\length, 5);
		delta.yield;
		delta*4.wait;

		10.wait;
		3.do{
			~crv7 = Synth.head(~gfx74, \nReverb, [\ibs,~recBus7, \defNum, ~evalNum.value]);};
				1.5.wait;

				1.wait;

		delta.yield;
				~gfx74.freeAll;
		0.2.wait;
}});


~gfx74.map(\roomsize, 0.35, \revtime, 0.25 ,\damping, 0.1, \inputbw, 0.5, \drywet, -10, \earlylevel, 1, \taillevel, 1);
//---------------------------------------------------------------------//

//---------------------------------------------------------------------//