(
if ( ~test_DrumSmpl1 == 1,
	    {
		~buf_DrumSmpl1= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl1.write("/Users/canince/Documents/SCmultitrack/AR1.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl1 = Synth("AR1-Diskout", ["bufnum", ~buf_DrumSmpl1]);
},);
if ( ~test_DrumSmpl2 == 1,
	    {
		~buf_DrumSmpl2 = Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl2.write("/Users/canince/Documents/SCmultitrack/AR2.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl2 = Synth("AR2-Diskout", ["bufnum", ~buf_DrumSmpl2]);
},);
if ( ~test_DrumSmpl3 == 1,
	    {
		~buf_DrumSmpl3= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl3.write("/Users/canince/Documents/SCmultitrack/AR3.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl3 = Synth("AR3-Diskout", ["bufnum", ~buf_DrumSmpl3]);
},);
if ( ~test_DrumSmpl4 == 1,
	    {
		~buf_DrumSmpl4= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl4.write("/Users/canince/Documents/SCmultitrack/AR4.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl4 = Synth("AR4-Diskout", ["bufnum", ~buf_DrumSmpl4]);
},);
if ( ~test_DrumSmpl5 == 1,
	    {
		~buf_DrumSmpl5= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl5.write("/Users/canince/Documents/SCmultitrack/AR5.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl5 = Synth("AR5-Diskout", ["bufnum", ~buf_DrumSmpl5]);
},);
if ( ~test_DrumSmpl6 == 1,
	    {
		~buf_DrumSmpl6= Buffer.alloc(s, 65536, 1);
		~buf_DrumSmpl6.write("/Users/canince/Documents/SCmultitrack/AR6.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_DrumSmpl6 = Synth("AR6-Diskout", ["bufnum", ~buf_DrumSmpl6]);
},);
if ( ~test_Massaka == 1,
	    {
		~buf_Massaka= Buffer.alloc(s, 65536, 1);
		~buf_Massaka.write("/Users/canince/Documents/SCmultitrack/AR7.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_Massaka = Synth("AR7-Diskout", ["bufnum", ~buf_Massaka]);
},);
if ( ~test_Sumanguru == 1,
	    {
		~buf_Sumanguru= Buffer.alloc(s, 65536, 1);
		~buf_Sumanguru.write("/Users/canince/Documents/SCmultitrack/Suman.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_Sumanguru = Synth("Sumanguru-Diskout", ["bufnum", ~buf_Sumanguru, "ibs", ~b4]);
},);
if ( ~test_Acid == 1,
	    {
		~buf_Acid= Buffer.alloc(s, 65536, 1);
		~buf_Acid.write("/Users/canince/Documents/SCmultitrack/AR8.aiff".standardizePath, "aiff", "int16", 0, 0, true);
		~trk_Acid = Synth("AR8-Diskout", ["bufnum", ~buf_Acid]);
});

)
