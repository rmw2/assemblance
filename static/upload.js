/**********************************************************************
 * upload.js
 * Author: Rob Whitaker
 *
 * Handle the file selection aspects of the application
 *********************************************************************/

$(document).ready( function readyFunction() {
	// Handle file uploads
	$('.inputfile').change(function autoSubmit() {
		// Flash "compiling..." message while server-side runs
		$('#asm-code').html('<div id="compiling">compiling...</div>');
		// Auto submit on file select
		$(this).parent().submit();
	});

	// Handle relative positioning of tooltips on hover
	$('.asm-mnemonic').mouseover( function tt_hover() {
		// Get current item and relatively positioned wrapper
		var $item = $(this),
			$tooltip = $("> .tt", $item),
			pos = $item.position();

		// Calculate new position for tooltip
		var top = pos.top,
			left = pos.left;

		console.log('Left: ' + left);
		console.log('Top:  ' + top);

		// Require that tooltip render in window
		if (top + $tooltip.height() > $("#asm-code").height()) {
			top = $("#asm-code").height() - $tooltip.height();
		}

		// Set position of tooltip
	    $tooltip.css({
	     	'top': 		top,
	    	'left': 	left
	    });

	   	console.log($tooltip.position().left + ', ' + $tooltip.position().top);
	});

	// Handle alignment of corresponding divs
	$('div[id^="c-line-"]').on("click", function align() {
		// get line number from end of id attribute
		var n = $(this).attr("id").split("-").pop();

		// select the corresponding element
		var match = $("#for-line-" + n);

		// find out top position of matched element
		match.scrollTop($(this).scrollTop())

		// set scrollTop on parent to position of matched element

	});

	// Handle corresponding highlights for mouse-overs
	$('.asm-label').hover( function mouseIn() {
		var hoverbg = "#DDD",
			val = $(this).text().replace(':','');

		// Select all tokens and filter those containing the label
		$('.token-text').filter( function matchText(i, el) {
			return $(el).text().includes(val)
		}).css("background-color", hoverbg);

	}, function mouseOut() {
		var val = $(this).text().replace(':','');
		// Select labels again and filter those with the same name
		$('.token-text').filter( function matchText(i, el) {
			return $(el).text().includes(val)
		}).css("background-color", "inherit");
	});
});


// $(document).ready( function readyFunction() {
// 	var cReader, sReader;

// 	if (window.File && window.FileReader) {
// 	    // Great success! All the File APIs are supported.

// 	    // Reader for source
// 	    cReader = new FileReader();
// 	    cReader.onload = function readerLoad(evt) {
// 			var src = evt.target.result;
// 			// Process source for display
// 			// allow tags to shine through
// 			src = src.replace(/</g, '&lt;');
// 			src = src.replace(/>/g, '&gt;');;
// 			console.log(src);
// 			$("#source-code")
// 				.html(src);
// 				.css('white-space', 'pre');
// 		};

// 		// Reader for assembly
// 		sReader = new FileReader();
// 		sReader.onload = function readerLoad(evt) {
// 			var asm = evt.target.result;
// 			asm = asm.replace('\n','<br>');
// 			$("#asm-code").html(asm);
// 		};
// 	} else {
// 	    alert('The File APIs are not fully supported in this browser.');
// 	}

// 	$("#upload").on("change", function handleUpload(evt) {
// 		// Grab files from uploader
// 		var files = evt.target.files;
// 		console.log('Files found\n' );

// 	    // Loop through the FileList
// 	    for (var i = 0, f; f = files[i]; i++) {
// 		    // Only process .c and .s file
// 			if (f.name.match('.*\.c')) {
// 				cReader.readAsText(f);
// 			} else if (f.name.match('.*\.s')) {
// 				sReader.readAsText(f);
// 			} else {
// 				alert('Unrecognized filetype');
// 				continue;
// 			}
// 	    }
// 	});
// });