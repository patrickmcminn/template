/*
Tuesday, October 9th 2012
mixer.scd
prm
*/

// create dictionaries to store mixer components:
~mixer = ();
~mixerSynth = ();

~mixer[\master] = Bus.audio(s, 2);
~mixer[\s1] = Bus.audio(s, 2);
~mixer[\s2] = Bus.audio(s, 2);
~mixer[\s3] = Bus.audio(s, 2);

~mixerSynth[\master] = Synth(\stereoFader, [\in, ~mixer[\master], \out, 0, \amp, 1], ~group[\audioFader], \addToTail);
~mixerSynth[\s1] = Synth(\stereoFader, [\in, ~mixer[\s1], \out, ~mixer[\master], \amp, 0.6], ~group[\audioFader], \addToHead);
~mixerSynth[\s2] = Synth(\stereoFader, [\in, ~mixer[\s2], \out, ~mixer[\master], \amp, 0.6], ~group[\audioFader], \addToHead);
~mixerSynth[\s3] = Synth(\stereoFader, [\in, ~mixer[\s3], \out, ~mixer[\master], \amp, 0.6], ~group[\audioFader], \addToHead);
