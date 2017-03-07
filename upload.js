/**********************************************************************
 * upload.js
 * Author: Rob Whitaker
 *
 * Handle the file selection aspects of the application
 *********************************************************************/

$(document).ready( function readyFunction() {
	if (window.File && window.FileReader) {
	  // Great success! All the File APIs are supported.
	} else {
	  alert('The File APIs are not fully supported in this browser.');
	}

	$("#upload").on("change", function handleUpload(evt) {
		// Grab files from uploader
		var files = evt.target.files;
		console.log('Files found\n')

	    // Loop through the FileList
	    for (var i = 0, f; f = files[i]; i++) {
	    	console.log('File ' + i);
		    // Only process .c and .s file
			if (!f.name.match('(.*\.c)|(.*\.s)')) {
				console.log('File doesn\'t match: ' + f.name);
				continue;
			}

			console.log('reading...');
		    var reader = new FileReader();
		    var src = reader.readAsText(f);
		    console.log(src);

		    // Set proper section to contain uploaded file
		    console.log('setting text...');
		    if (f.name.match('.*\.s')) {
		    	$("#asm-code").text(src);
		    } else {
		    	$("#source-code").text(src);
		    }
	    }
	});
});