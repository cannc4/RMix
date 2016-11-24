<<<<<<< HEAD
"multitrackclose.scd".loadRelative;

////////////// Dub-Echo  /////////////////////
~dubecho1 = Synth(\dubecho, [\ibs,~recBus1],~gr1);
~dubecho2 = Synth(\dubecho, [\ibs,~recBus2],~gr2);
~dubecho3 = Synth(\dubecho, [\ibs,~recBus3],~gr3);
~dubecho4 = Synth(\dubecho, [\ibs,~recBus4],~gr4);
~dubecho5 = Synth(\dubecho, [\ibs,~recBus5],~gr5);
~dubecho6 = Synth(\dubecho, [\ibs,~recBus6],~gr6);
~dubecho7 = Synth(\dubecho, [\ibs,~recBus7],~gr7);
~dubecho8 = Synth(\dubecho, [\ibs,~recBus8],~gr8);

~dubecho1.free;
~dubecho2.free;
~dubecho3.free;
~dubecho4.free;
~dubecho5.free;
~dubecho6.free;
~dubecho7.free;
~dubecho8.free;

////Template////
~dubecho2.set(\sep, 0.00012);
~dubecho2.set(\fb, 1);
~dubecho2.set(\length, 0.18);
~dubecho2.set(\amp,5);


//---------------------------------------------------------------------//
////////////// Static-Reverb  /////////////////////
~nReverb1 = Synth(\nReverb, [\ibs, ~recBus1], ~gr1);
~nReverb2 = Synth(\nReverb, [\ibs, ~recBus2], ~gr2);
~nReverb3 = Synth(\nReverb, [\ibs, ~recBus3], ~gr3);
~nReverb4 = Synth(\nReverb, [\ibs, ~recBus4], ~gr4);
~nReverb5 = Synth(\nReverb, [\ibs, ~recBus5], ~gr5);
~nReverb6 = Synth(\nReverb, [\ibs, ~recBus6], ~gr6);
~nReverb7 = Synth(\nReverb, [\ibs, ~recBus7], ~gr7);
~nReverb8 = Synth(\nReverb, [\ibs, ~recBus8], ~gr8);

~nReverb1.free;
~nReverb2.free;
~nReverb3.free;
~nReverb4.free;
~nReverb5.free;
~nReverb6.free;
~nReverb7.free;
~nReverb8.free;


//---------------------------------------------------------------------//
////////////// Delay-LL /////////////////////
~delayll1 = Synth(\delayll, [\ibs,~recBus1],~gr1);
~delayll2 = Synth(\delayll, [\ibs,~recBus2],~gr2);
~delayll3 = Synth(\delayll, [\ibs,~recBus3],~gr3);
~delayll4 = Synth(\delayll, [\ibs,~recBus4],~gr4);
~delayll5 = Synth(\delayll, [\ibs,~recBus5],~gr5);
~delayll6 = Synth(\delayll, [\ibs,~recBus6],~gr6);
~delayll7 = Synth(\delayll, [\ibs,~recBus7],~gr7);
~delayll8 = Synth(\delayll, [\ibs,~recBus8],~gr8);

~delayll1.free;
~delayll2.free;
~delayll3.free;
~delayll4.free;
~delayll5.free;
~delayll6.free;
~delayll7.free;
~delayll8.free;

////Template////
~delayll3.set( \out, 0, \gate, 1, \freqHP, 2000,\freqLP, 1000, \filtRes, 0.2 ,\delme, 0.2, \delRes, 0.2 ,\delRez, 2, \delFlt, 2000,\delTim , 0.5 ,\delFed , 0.9 ,\lfoFrq , 10, \lfoAmt , 2, \dryWet , 1 , \lagKarme , 0.2);

~delayll2.set( \out, 0, \gate, 1, \freqHP, 500,\freqLP,1000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 6000,\delTim , 0.2 ,\delFed , 0.1 ,\lfoFrq , 1.5, \lfoAmt , 1, \dryWet , 1 , \lagKarme , 0.5);

~delayll3.set( \out, 0, \gate, 1, \freqHP, 10,\freqLP, 8000, \filtRes, 0.2 ,\delme, 0.9, \delRes, 0.2 ,\delRez, 2, \delFlt, 60000,\delTim , 1.5 ,\delFed , 1.5 ,\lfoFrq , 1000, \lfoAmt , 0.4, \dryWet , 1 , \lagKarme , 0.5);
=======
//Stop Recording



//---------------------Delay controls ---------------------//
////////////// Dub-Echo  /////////////////////
~dbecho1 = Synth.head(~gfx11, \dubecho, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~dbecho2 = Synth.head(~gfx21, \dubecho, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~eightdels = Synth.head(~gfx21, \dubecho, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~dbecho3 = Synth.head(~gfx31, \dubecho, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~dbecho4 = Synth.head(~gfx41, \dubecho, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~dbecho5 = Synth.head(~gfx51, \dubecho, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~dbecho6 = Synth.head(~gfx61, \dubecho, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~dbecho7 = Synth.head(~gfx71, \dubecho, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~dbecho8 = Synth.head(~gfx81, \dubecho, [\ibs,~recBus8, \defNum, ~evalNum.value]);


////Template////

//multiple control

b = Bus.control(s, 1);
c = Bus.control(s, 1);
d = Bus.control(s,1);
d.set(0.0000000002);
b.set(0.035);
c.set(0.00002);
~gfx71.map(\fb, b);
~gfx61.map(\length, b);
~gfx31.map(\sep, c);
~gfx81.map(\ibs, nil,\ofBool, 0);
~gfx21.freeAll
////Loop////
~modloop.stop;

~modloop.start;

~modloop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~dbecho2 = Synth.head(~gfx21, \dubecho, [\ibs,~recBus2, \defNum, ~evalNum.value]);
		delta.wait;
		~dbecho3 = Synth.head(~gfx31, \dubecho, [\ibs,~recBus3, \defNum, ~evalNum.value]);

b.set(0.035);
		//~gfx11.map(\length, b);
		4.do{
			~dbecho2 = Synth.head(~gfx21, \dubecho, [\ibs,~recBus2, \defNum, ~evalNum.value]);
			~dbecho3 = Synth.head(~gfx31, \dubecho, [\ibs,~recBus3, \defNum, ~evalNum.value]);

			1.5.wait;
		};
		b.set(0.025);
				1.5.wait;

		~gfx21.map(\ibs, nil,\ofBool, 0);
		~gfx31.map(\ibs, nil,\ofBool, 0);
				3.wait;

		delta.yield;
				~gfx21.freeAll;
		0.2.wait;
				~gfx31.freeAll;
		5.wait;
}});

//---------------------------------------------------------------------//

//////////////////////// Delay-LL /////////////////////////////////

~dll1 = Synth.head(~gfx12, \delayll, [\ibs,~recBus1, \defNum, ~evalNum.value]);
~dll2 = Synth.head(~gfx22, \delayll, [\ibs,~recBus2, \defNum, ~evalNum.value]);
~dll3 = Synth.head(~gfx32, \delayll, [\ibs,~recBus3, \defNum, ~evalNum.value]);
~dll4 = Synth.head(~gfx42, \delayll, [\ibs,~recBus4, \defNum, ~evalNum.value]);
~dll5 = Synth.head(~gfx52, \delayll, [\ibs,~recBus5, \defNum, ~evalNum.value]);
~dll6 = Synth.head(~gfx62, \delayll, [\ibs,~recBus6, \defNum, ~evalNum.value]);
~dll7 = Synth.head(~gfx72, \delayll, [\ibs,~recBus7, \defNum, ~evalNum.value]);
~dll8 = Synth.head(~gfx82, \delayll, [\ibs,~recBus8, \defNum, ~evalNum.value]);

~gfx62.freeAll
////Templates////

//multiple control
while( { counter &lt; 10; }, { "repeat".postln; counter = counter + 1; } );
if(~dll2.query.next == -1){

b = Bus.control(s, 1);
c= Bus.control(s, 1);
b.set(1.4);
	c.set(0.93);
~gfx32.map(\lfoAmt, b);
~gfx32.map(\delme, c);
~gfx22.map(\ibs, nil,\ofBool, 0);
	~gfx72.map(\ibs, nil,\ofBool, 0);
~gfx82.freeAll
~modloop2.stop;

~modloop2.play;

~modloop2 = Task({
	var delta = rrand(0,3);
	loop{
~dll2 = Synth.head(~gfx22, \delayll, [\ibs,~recBus2, \defNum, ~evalNum.value]);

			delta.wait;
			~gfx22.map(\ibs, nil,\ofBool, 0);
delta.yield;
			delta.wait;



delta.yield;
			~gfx22.freeAll;
			0.2.wait;
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
	~gr4.freeAll
//multiple control
~gfx33.freeAll
	~nrv2.free
b = Bus.control(s, 1);
b.set(0.1);
~gfx23.map(\sep, b);
	~gfx33.map(\ibs, nil, \ofBool, 0);
		~gfx83.map(\ibs, nil, \ofBool, 0);

////Loop////
~mod3loop.stop;

~mod3loop.start;

~mod3loop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~nrv2 = Synth.head(~gfx23, \nReverb, [\ibs,~recBus2, \defNum, ~evalNum.value]);
		delta.wait;
		//b.set(delta);


		delta*4.wait;

		5.wait;
		3.do{
			~nrv2 = Synth.head(~gfx33, \nReverb, [\ibs,~recBus3, \defNum, ~evalNum.value]);};
				1.5.wait;

				1.wait;


			~gfx23.map(\ibs, nil,\ofBool, 0);
			0.9.wait;
				~gfx33.freeAll;
		5.wait;
			delta.yield;
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
	b.set(-20);
~gfx84.map(\taillevel, b);
~gfx34.map(\ibs, nil,\ofBool, 0);
~gfx34.freeAll
////Loop////
~mod4loop.stop;

~mod4loop.start;

~mod4loop = Task({

	var delta;
	delta = rrand(0.1, 1) * 3;
	loop{
		~crv1 = Synth.head(~gfx14, \nReverb, [\ibs,~recBus1, \defNum, ~evalNum.value]);
		delta.wait;
		b.set(delta);

		delta.yield;
		delta*4.wait;

		10.wait;
		3.do{
			~crv7 = Synth.head(~gfx74, \nReverb, [\ibs,~recBus7, \defNum, ~evalNum.value]);};
				0.5.wait;

				1.wait;

		delta.yield;
				~gfx74.freeAll;
		0.2.wait;
							~gfx14.freeAll;
			2.wait;
}});


~gfx74.map(\roomsize, 0.35, \revtime, 0.25 ,\damping, 0.1, \inputbw, 0.5, \drywet, -10, \earlylevel, 1, \taillevel, 1);
//---------------------------------------------------------------------//
>>>>>>> master

//---------------------------------------------------------------------//