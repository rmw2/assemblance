/**********************************************************************
 * parse.js
 * Author: Rob Whitaker
 *
 * A collection of functions for parsing assembly language
 *********************************************************************/

var sizes = {'q': 8, 'l' : 4, 'w' : 2, 'b' : 1};


/* Search the reference dictionary for mnem or its parent menmonic.
 * Ensure that the entry reflects the correct version of the menomnic
 * and return it. */
function lookupMnemonic(mnem) {
	if (mnem in ref) {
		// mnemonic in dictionary, return entry as is
		var entry = ref[mnem];
		return entry;
	} else if (mnem.slice(0, -1) in ref) {
		// mnemonic is a special case of a more general one
		var entry = ref[mnem.slice(0, -1)];
		var suffix = mnem.charAt(mnem.length - 1);

		// translate suffix to number of bytes
		if (suffix in sizes) {
			var sz = sizes[suffix];
		}

		// edit entry to reflect size
		var l = entry["size"].length;
		for (var i = 0; i < l; i++) {
			// replace zero placeholders with size determined from suffix
			if (entry["size"][i] = 0)
				entry["size"][i] = sz;
		}

		return entry;
	}
}
