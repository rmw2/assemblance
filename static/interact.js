/**********************************************************************
 * interact.js
 * Author: Rob Whitaker
 *
 * Handle interaction with the user interface
 *********************************************************************/

$(document).ready( function readyFunction() {
	// Define functions for doing things
	function align(id, fromBox, toBox) {
		return function() {
			// get line number from end of id attribute
			var n = $(this).attr("id").split("-").pop();

			// select the corresponding element
			var $match = $(id + n);
			var toTop = $match.position().top;
			var fromTop = $(this).position().top;

			// Make sure top of selected assembly block is in the frame
			if (fromTop < 0 || $(this).height() > $(fromBox).height()) {
				$(fromBox).animate({
					scrollTop: $(fromBox).scrollTop() + fromTop
				});

				fromTop = 0;
			}
			// Make sure bottom of assembly block is in the frame
			else if (fromTop + $(this).height() > $(fromBox).height()) {

				$(fromBox).animate({
					scrollTop: $(fromBox).scrollTop() + (fromTop + $(this).height() - $(fromBox).height())
				});

				fromTop = $(fromBox).height() - $(this).height();
			}

			// calculate current position of c line relative to corresponding block
			var rel = toTop - fromTop;

			// incorporate current value of scrollTop to get new scroll
			var scroll = $(toBox).scrollTop() + rel;

			// highlight clicked element and match, scroll to new position
			highlight($(this));
			$(toBox).animate( { scrollTop: scroll }, 500);
			highlight($match);
		}
	}

	function highlight($el) {
		// Add and remove border
		$el.css('border', 'solid 1px black');
		$el.animate( { 'border-width' : 0 }, 1000);
	}

	// Handle file uploads
	$('.inputfile').change(function autoSubmit() {
		// Flash "compiling..." message while server-side runs
		$('#asm-code').html('<div id="compiling">compiling...</div>');
		// Auto submit on file select
		$(this).parent().submit();
	});

	// Handle relative positioning of tooltips on hover
	$('.asm-mnemonic').mouseover( function tooltip() {
		// Get current item and relatively positioned wrapper
		var $item = $(this),
			$tooltip = $("> .m-tt", $item),
			pos = $item.position();

		// Calculate new position for tooltip
		var top = pos.top,
			left = pos.left;

		// Require that tooltip render in window (vertical alignment)
		if (top + $tooltip.height() > $("#asm-code").height()) {
			top = $("#asm-code").height() - $tooltip.height();
		}

		// Align horizontally
		left = left - $tooltip.width() - $item.width() / 2;

		// Set position of tooltip
	    $tooltip.css({
	     	'top': 		top,
	    	'left': 	left
	    });
	});

	$('.asm-operand').mouseover( function tooltip() {
		// Get current item and relatively positioned wrapper
		var $item = $(this),
			$tooltip = $(" .v-tt", $item),
			pos = $item.position();

		// Calculate new position for tooltip
		var top = pos.top,
			left = pos.left;

		// Require that tooltip render in window (vertical alignment)
		if (top + $tooltip.height() > $("#asm-code").height()) {
			top = $("#asm-code").height() - $tooltip.height();
		}

		// Align horizontally
		left = left - $tooltip.width() - $item.width() / 2;

		// Set position of tooltip
	    $tooltip.css({
	     	'top': 		top,
	    	'left': 	left
	    });
	});

	// Handle alignment of corresponding divs
	$('div[id^="src-line-"]').click(
		align("#for-line-", "#source-code", "#asm-code")
	);
	$('div[id^="for-line-"]').click(
		align("#src-line-", "#asm-code", "#source-code")
	);


	// Handle corresponding highlights for mouse-overs
	$('.asm-label').hover(

		function mouseIn() {
			var hoverbg = "#DDD",
				val = $(this).text().replace(':','');

			// Select all tokens and filter those containing the label
			$('.token-text').filter( function matchText(i, el) {
				return $(el).text().includes(val);
			}).css("background-color", hoverbg);
		},

		function mouseOut() {
			var val = $(this).text().replace(':','');

			// Select labels again and filter those with the same name
			$('.token-text').filter( function matchText(i, el) {
				return $(el).text().includes(val);
			}).css("background-color", "inherit");

	});
});
