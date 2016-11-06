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

//---------------------------------------------------------------------//