(
Server.supernova;
s.audioBusAllocator.reserve(12,1);
s.options.numAudioBusChannels=128;
s.options.numOutputBusChannels = 2;
s.options.numInputBusChannels = 10;
//s.options.outDevice = "Headphones";
//s.options.outDevice = "Built-in Output";
// s.options.outDevice = "Fireface UCX (23648323)";
//s.options.outDevice = "Fireface UFX (23646473)";
s.options.outDevice = "QUAD-CAPTURE";
s.options.inDevice = "Analog Rytm (Core Audio)";
s.options.hardwareBufferSize = 256;
s.options.maxNodes = 2048;
s.options.numWireBufs = 1024;
s.options.memSize = 131072 * 16;
s.options.sampleRate = 44100;
s.options.blockSize = 128;

s.options.numBuffers = 2048;
s.latency = 0.02;
s.options.verbosity = -2;
//MIDIClient.init;
//MIDIIn.connectAll;
s.boot;
s.waitForBoot({

	//---Loading Scripts----//

	//"RMbind.scd".loadRelative;//pbind

	"RMdefs.scd".loadRelative;
	0.5.wait;
	"RMfx.scd".loadRelative;


	//Logic for multitrack recordings
	~test_DrumSmpl1 = 0;
	~test_DrumSmpl2 = 0;
	~test_DrumSmpl3 = 0;
	~test_DrumSmpl4 = 0;
	~test_DrumSmpl5 = 0;
	~test_DrumSmpl6 = 0;
	~test_DrumSmpl7 = 0;
	~test_DrumSmpl8 = 0;
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> master
	~test_Master= 0;


	//Tidal
	SuperDirt.start;
<<<<<<< HEAD
=======
	~test_freeze = 0;
	~test_delay = 0;
	~test_ringMod = 0;
	~test_dubecho = 0;


	//
	// ~test_Etna1 = 0;
	// ~test_Etna2 = 0;
	// ~test_Etna3 = 0;
	// ~test_Etna4 = 0;
	// ~test_Etna5 = 0;
	// ~test_Etna6 = 0;
	//
	// ~test_Massaka = 0;
	// ~test_SumanGuru = 0;
	// ~test_Acid = 0;
	// ~test_P5pwm = 0;
	// ~test_Lumbricost = 0;
	//
	// ~test_SOSkick = 0;
	// ~test_SOShats = 0;
	// ~test_SOSsnare = 0;
	// ~test_SOStom = 0;
	// ~test_DPG1 = 1;
	// ~test_DPG2 = 1;



>>>>>>> ec520e10694c5b7b3e25a0c30644033b39961a97
=======
>>>>>>> master
	v = s.volume;

});
)