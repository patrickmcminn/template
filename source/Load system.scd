/*
Wednesday, October 10th 2012
New Orleans, LA
Load system.scd
prm
*/


r {
	"/system/Load server.scd".loadRelative;
	4.wait;
	"/system/Load SynthDefs.scd".loadRelative;
	2.wait;
	"/system/Load mixer.scd".loadRelative;
	"/system/Load Functions.scd".loadRelative;
	"/system/Load OSC.scd".loadRelative;
}.play(AppClock);

