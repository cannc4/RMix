(

if ( ~test_DrumSmpl1 == 1,
	    {
		~buf_DrumSmpl1= Buffer.alloc(s, 65536,1);
		~buf_DrumSmpl1.write("/Users/canince/Documents/SCmultitrack/AR1.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl1 = Synth(\AR1Diskout, ["bufnum", ~buf_DrumSmpl1],addAction: \addToTail);
},);
if ( ~test_DrumSmpl2 == 1,
	    {
		~buf_DrumSmpl2 = Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl2.write("/Users/canince/Documents/SCmultitrack/AR2.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl2 = Synth(\AR2Diskout, ["bufnum", ~buf_DrumSmpl2],addAction: \addToTail);
},);
if ( ~test_DrumSmpl3 == 1,
	    {
		~buf_DrumSmpl3= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl3.write("/Users/canince/Documents/SCmultitrack/AR3.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl3 = Synth(\AR3Diskout, ["bufnum", ~buf_DrumSmpl3],addAction: \addToTail);
},);
if ( ~test_DrumSmpl4 == 1,
	    {
		~buf_DrumSmpl4= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl4.write("/Users/canince/Documents/SCmultitrack/AR4.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl4 = Synth(\AR4Diskout, ["bufnum", ~buf_DrumSmpl4],addAction:\addToTail );
},);
if ( ~test_DrumSmpl5 == 1,
	    {
		~buf_DrumSmpl5=Buffer.alloc(s, 65536,1);
		~buf_DrumSmpl5.write("/Users/canince/Documents/SCmultitrack/AR5.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl5 = Synth(\AR5Diskout, ["bufnum", ~buf_DrumSmpl5],addAction: \addToTail)
},);
if ( ~test_DrumSmpl6 == 1,
	    {
		~buf_DrumSmpl6= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl6.write("/Users/canince/Documents/SCmultitrack/AR6.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl6 = Synth(\AR6Diskout, ["bufnum", ~buf_DrumSmpl6],addAction: \addToTail);
},);
if ( ~test_DrumSmpl7 == 1,
	    {
		~buf_DrumSmpl7= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl7.write("/Users/canince/Documents/SCmultitrack/AR7.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl7 = Synth(\AR7Diskout, ["bufnum", ~buf_DrumSmpl7],addAction: \addToTail);
},);
if ( ~test_DrumSmpl8 == 1,
	    {
		~buf_DrumSmpl8= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl8.write("/Users/canince/Documents/SCmultitrack/AR8.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl8 = Synth(\AR8Diskout, ["bufnum", ~buf_DrumSmpl8],addAction: \addToTail);
},);

if ( ~test_freeze == 1,
	    {
		~buf_freeze= Buffer.alloc(s, 65536, 1);
		~buf_freeze.write("/Users/canince/Documents/SCmultitrack/freeze.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_freeze = Synth(\freezeDiskout, ["bufnum", ~buf_freeze],addAction: \addToTail);
},);
if ( ~test_delay == 1,
	    {
		~buf_delay= Buffer.alloc(s, 65536, 1);
		~buf_delay.write("/Users/canince/Documents/SCmultitrack/delay.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_delay = Synth(\delayDiskout, ["bufnum", ~buf_delay],addAction: \addToTail);
},);

if ( ~test_dubecho == 1,
	    {
		~buf_dubecho= Buffer.alloc(s, 65536, 1);
		~buf_dubecho.write("/Users/canince/Documents/SCmultitrack/dubecho.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_dubecho = Synth(\dubechoDiskout, ["bufnum", ~buf_dubecho],addAction: \addToTail);
},);


if ( ~test_ringMod == 1,
	    {
		~buf_ringMod= Buffer.alloc(s, 65536, 1);
		~buf_ringMod.write("/Users/canince/Documents/SCmultitrack/ringMod.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_ringMod = Synth(\ringModDiskout, ["bufnum", ~buf_ringMod],addAction: \addToTail);
});

)
