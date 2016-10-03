(
///////////////////////////////////////// CC START ////////////////////////////////////////////////

m = MIDIOut(0, MIDIClient.destinations.at(0).uid);


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK1/BD ////////////////////////////////////////////////////


Pdef(\track1synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,0,
		\ctlNum, 16));


Pdef(\track1synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,0,
		\ctlNum, 17));


Pdef(\track1synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 18));

Pdef(\track1synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 19));


Pdef(\track1synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
	\ctlNum, 20));

Pdef(\track1synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 21));


Pdef(\track1synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 22));

Pdef(\track1synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 23));



Pdef(\track1samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,0,
		\ctlNum, 24));

Pdef(\track1samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,0,
		\ctlNum, 25));

Pdef(\track1samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 26));

Pdef(\track1samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
	\ctlNum, 27));


Pdef(\track1samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 28));

Pdef(\track1samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 29));


Pdef(\track1samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 30));

Pdef(\track1samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,0,
		\ctlNum, 31));

////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK2/SD ////////////////////////////////////////////////////
Pdef(\track2synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,1,
		\ctlNum, 16));


Pdef(\track2synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,1,
		\ctlNum, 17));


Pdef(\track2synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 18));

Pdef(\track2synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 19));


Pdef(\track2synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
	\ctlNum, 20));

Pdef(\track2synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 21));


Pdef(\track1synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 22));

Pdef(\track2synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 23));



Pdef(\track2samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,1,
		\ctlNum, 24));

Pdef(\track2samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,1,
		\ctlNum, 25));

Pdef(\track2samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 26));

Pdef(\track2samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
	\ctlNum, 27));


Pdef(\track2samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 28));

Pdef(\track2samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 29));


Pdef(\track2samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 30));

Pdef(\track2samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,1,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK3/RS ////////////////////////////////////////////////////

Pdef(\track3synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,2,
		\ctlNum, 16));


Pdef(\track3synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,2,
		\ctlNum, 17));


Pdef(\track3synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 18));

Pdef(\track3synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 19));


Pdef(\track3synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
	\ctlNum, 20));

Pdef(\track3synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 21));


Pdef(\track3synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 22));

Pdef(\track3synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 23));



Pdef(\track3samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,2,
		\ctlNum, 24));

Pdef(\track3samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,2,
		\ctlNum, 25));

Pdef(\track3samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 26));

Pdef(\track3samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
	\ctlNum, 27));


Pdef(\track3samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 28));

Pdef(\track3samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 29));


Pdef(\track3samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 30));

Pdef(\track3samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,2,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK4/CP ////////////////////////////////////////////////////

Pdef(\track4synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,3,
		\ctlNum, 16));


Pdef(\track4synthpr2,
	EventPatternProxy(Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,3,
		\ctlNum, 17)));


Pdef(\track4synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 18));

Pdef(\track4synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 19));


Pdef(\track4synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
	\ctlNum, 20));

Pdef(\tracksynthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 21));


Pdef(\track4synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 22));

Pdef(\track4synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 23));



Pdef(\track4samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,3,
		\ctlNum, 24));

Pdef(\track4samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,3,
		\ctlNum, 25));

Pdef(\track4samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 26));

Pdef(\track4samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
	\ctlNum, 27));


Pdef(\track4samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 28));

Pdef(\track4samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 29));


Pdef(\track4samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 30));

Pdef(\track4samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,3,
		\ctlNum, 31));

////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK5/BT ////////////////////////////////////////////////////

Pdef(\track5synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,4,
		\ctlNum, 16));


Pdef(\track5synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,4,
		\ctlNum, 17));


Pdef(\track5synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 18));

Pdef(\track5synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 19));


Pdef(\track5synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
	\ctlNum, 20));

Pdef(\track5synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 21));


Pdef(\track5synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 22));

Pdef(\track5synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 23));



Pdef(\track5samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,4,
		\ctlNum, 24));

Pdef(\track5samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,4,
		\ctlNum, 25));

Pdef(\track5samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 26));

Pdef(\track5samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
	\ctlNum, 27));


Pdef(\track5samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 28));

Pdef(\track5samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 29));


Pdef(\track5samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 30));

Pdef(\track5samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,4,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK6/LT ////////////////////////////////////////////////////


Pdef(\track6synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,5,
		\ctlNum, 16));


Pdef(\track6synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,5,
		\ctlNum, 17));


Pdef(\track6synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 18));

Pdef(\track6synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 19));


Pdef(\track6synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
	\ctlNum, 20));

Pdef(\track6synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 21));


Pdef(\track6synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 22));

Pdef(\track6synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 23));



Pdef(\track6samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,5,
		\ctlNum, 24));

Pdef(\track6samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,5,
		\ctlNum, 25));

Pdef(\track6samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 26));

Pdef(\track6samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
	\ctlNum, 27));


Pdef(\track6samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 28));

Pdef(\track6samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 29));


Pdef(\track6samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 30));

Pdef(\track6samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,5,
		\ctlNum, 31));



////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK7/MT ////////////////////////////////////////////////////


Pdef(\track7synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,6,
		\ctlNum, 16));


Pdef(\track7synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,6,
		\ctlNum, 17));


Pdef(\track7synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 18));

Pdef(\track7synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 19));


Pdef(\track7synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
	\ctlNum, 20));

Pdef(\track7synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 21));


Pdef(\track7synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 22));

Pdef(\track7synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 23));



Pdef(\track7samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,6,
		\ctlNum, 24));

Pdef(\track7samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,6,
		\ctlNum, 25));

Pdef(\track7samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 26));

Pdef(\track7samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
	\ctlNum, 27));


Pdef(\track7samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 28));

Pdef(\track7samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 29));


Pdef(\track7samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 30));

Pdef(\track7samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,6,
		\ctlNum, 31));




////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK8/HT ////////////////////////////////////////////////////


Pdef(\track8synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,7,
		\ctlNum, 16));


Pdef(\track8synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,7,
		\ctlNum, 17));


Pdef(\track8synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 18));

Pdef(\track8synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 19));


Pdef(\track8synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
	\ctlNum, 20));

Pdef(\track8synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 21));


Pdef(\track8synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 22));

Pdef(\track8synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 23));



Pdef(\track8samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,7,
		\ctlNum, 24));

Pdef(\track8samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,7,
		\ctlNum, 25));

Pdef(\track8samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 26));

Pdef(\track8samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
	\ctlNum, 27));


Pdef(\track8samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 28));

Pdef(\track8samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 29));


Pdef(\track8samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 30));

Pdef(\track8samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,7,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK9/CH ////////////////////////////////////////////////////


Pdef(\track9synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,8,
		\ctlNum, 16));


Pdef(\track9synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,8,
		\ctlNum, 17));


Pdef(\track9synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 18));

Pdef(\track9synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 19));


Pdef(\track9synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
	\ctlNum, 20));

Pdef(\track9synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 21));


Pdef(\track9synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 22));

Pdef(\track9synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 23));



Pdef(\track9samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,8,
		\ctlNum, 24));

Pdef(\track9samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,8,
		\ctlNum, 25));

Pdef(\track9samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 26));

Pdef(\track9samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
	\ctlNum, 27));


Pdef(\track9samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 28));

Pdef(\track9samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 29));


Pdef(\track9samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 30));

Pdef(\track9samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,8,
		\ctlNum, 31));

////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK10/OH ////////////////////////////////////////////////////



Pdef(\track10synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,9,
		\ctlNum, 16));


Pdef(\track10synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,9,
		\ctlNum, 17));


Pdef(\track10synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 18));

Pdef(\track10synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 19));


Pdef(\track10synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
	\ctlNum, 20));

Pdef(\track10synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 21));


Pdef(\track10synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 22));

Pdef(\track10synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 23));



Pdef(\track10samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,9,
		\ctlNum, 24));

Pdef(\track10samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,9,
		\ctlNum, 25));

Pdef(\track10samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 26));

Pdef(\track10samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
	\ctlNum, 27));


Pdef(\track10samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 28));

Pdef(\track10samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 29));


Pdef(\track10samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 30));

Pdef(\track10samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,9,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK11/CY ////////////////////////////////////////////////////


Pdef(\track11synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,10,
		\ctlNum, 16));


Pdef(\track11synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,10,
		\ctlNum, 17));


Pdef(\track11synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 18));

Pdef(\track11synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 19));


Pdef(\track11synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
	\ctlNum, 20));

Pdef(\track11synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 21));


Pdef(\track11synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 22));

Pdef(\track11synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 23));



Pdef(\track11samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,10,
		\ctlNum, 24));

Pdef(\track11samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,10,
		\ctlNum, 25));

Pdef(\track11samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 26));

Pdef(\track11samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
	\ctlNum, 27));


Pdef(\track11samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 28));

Pdef(\track11samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 29));


Pdef(\track11samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 30));

Pdef(\track11samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,10,
		\ctlNum, 31));


////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TRACK12/CB ////////////////////////////////////////////////////



Pdef(\track12synthpr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,11,
		\ctlNum, 16));


Pdef(\track12synthpr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,11,
		\ctlNum, 17));


Pdef(\track12synthpr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 18));

Pdef(\track12synthpr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 19));


Pdef(\track12synthpr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
	\ctlNum, 20));

Pdef(\track12synthpr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 21));


Pdef(\track12synthpr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 22));

Pdef(\track12synthpr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 23));



Pdef(\track12samplepr1,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,11,
		\ctlNum, 24));

Pdef(\track12samplepr2,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],
		inf),
	\chan,11,
		\ctlNum, 25));

Pdef(\track12samplepr3,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 26));

Pdef(\track12samplepr4,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
	\ctlNum, 27));


Pdef(\track12samplepr5,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 28));

Pdef(\track12samplepr6,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 29));


Pdef(\track12samplepr7,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 30));

Pdef(\track12samplepr8,
	Pbind(\type, \midi, \midiout, m,
	\midicmd, \control,
	\control, Pseq([0,127],inf),
	\chan,11,
		\ctlNum, 31));


///////////////////////////////////////// CC END ////////////////////////////////////////////////

/////// TRIG MIDI /////////

Pdef(\track1sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,0,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1], inf),

	\amp, Pseq([1, 1, 2, 1], inf)

));

Pdef(\track2sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,1,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1], inf),

	\amp, Pseq([1, 1, 1, 1], inf)
));

Pdef(\track3sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,2,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track4sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,3,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track5sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,4,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track6sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,5,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));
Pdef(\track7sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,6,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track8sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,7,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track9sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,8,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));

Pdef(\track10sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,9,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));


Pdef(\track11sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,8,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)

));

Pdef(\track12sq,
	Pbind(
    \type, \midi,
        // this line is optional b/c noteOn is the default
        // just making it explicit here
    \midicmd, \noteOn,
    \midiout, m,    // must provide the MIDI target here
    \chan,10,
        // degree is converted to midinote, not just frequency
	\degree,Pseq([0.2,0.5], inf),
	\dur, Pseq([1, 1, 2, 1]/20, inf),

	\amp, Pseq([1, 1, 2, 1], inf)
));
)
