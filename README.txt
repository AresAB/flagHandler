
First attempt at making a flag handler for shell scripts, not that pretty but it helped teach me a little bit.

flaghandler.sh: takes in a string input, and returns a string output. Any flags within the input, indicated by '-' or '--' will be returned without the dashes, with each flag seperated by a space. '-' flags will be treated as conglomerates of one letter flags, while '--' flags will be treated as full word flags.
	ex: $ flaghandler.sh -a--bbb-ccc--d
	    a bbb c c c d
