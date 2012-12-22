/*
groups.scd
prm
*/

// define dictionary to hold groups:
~group = ();

// define groups:

~group[\input] = Group.new(s, \addToHead);
~group[\control] = Group.new(s, \addToHead);
~group[\trig] = Group.new(s, \addToTail);
~group[\audio] = Group.new(s, \addToTail);


// subgroups:

// sorts audio synths into synths and effects
~group[\synths] = Group.new(~group[\audio], \addToTail);
~group[\fx] = Group.new(~group[\audio], \addToTail);

// goes at the end of the audio group for faders:
~group[\audioFader] = Group.new(~group[\audio], \addToTail);


