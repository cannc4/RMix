(
~rhythm = Pseq([0.11 ,0.22, 0.33, 0.55], inf).asStream;

~tail_length = Pwhite(2, 5, 1);

~pattern_test = Pbind(
	\dur, Pstutter(~tail_length, Pfunc { ~rhythm.next }).trace,
	\freq, Pwhite(200, 400, inf)
);


r = Routine {
	loop {
		"play pattern".postln;
		~pattern_test.play;
		5.0.wait;
	}
}.play;
)

// But there is a Pattern class designed for that kind of structure: Pspawner -
// it encapsulates the variables and has also the feature to choose
// between parallel and sequential spawning:
//

p = Pspawner { |sp|
	var rhythm = Pseq([0.11 ,0.22, 0.33, 0.55], inf).asStream;
	var tail_length = Pwhite(2, 5, 1);
	var pat = Pbind(
		\dur, Pstutter(tail_length, Pfunc { rhythm.next }).trace,
		\freq, Pwhite(200, 400, inf)
	);

	loop {
		sp.par(pat);
		5.wait;
	}
}.play
	