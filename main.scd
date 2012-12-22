/*
main.scd
prm
*/

(
r {
	"/source/Load system.scd".loadRelative;
	7.wait;
	"/source/Load control.scd".loadRelative;
}.play(AppClock);
);
