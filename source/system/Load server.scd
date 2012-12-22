/*
Wednesday, October 10th 2012
server.scd
prm
*/

// creates a set of functions for Server handling
~server = { };

~server.addUniqueMethod(\boot, {
	s.boot;
});

~server.addUniqueMethod(\quit, {
	s.quit;
});

~server.addUniqueMethod(\memSize, { | func, size |
	var serverOptions;
	serverOptions = Server.local.options;
	serverOptions.memSize = size;
});


~server.memSize(131072);
~server.boot;