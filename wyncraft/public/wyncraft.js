var zerglingIndex = 0;

var spawnZerglings = function() {
	$('#spawn').prop('disabled', false);
	
	if(zerglingIndex > 60) {
		$('#brood').append('<h3>SPAWN MORE OVERLORDS</h3>');
		return
	}

	for (var i = 0; i < 6; i++) {
		var zerglingId = "zergling" + zerglingIndex.toString()

		$('#brood').append('<div id="' + zerglingId + '_container"><button class="alive" id="' + zerglingIndex + '"class="zergling">Zergling</button></div>');

		// // Not necessary because of event delegation, saving for posterity 
		// (function(id) {
		// 	$('#' + id + ' button').click(function() {
		// 		$(this).prop('disabled', true);
		// 		setTimeout(function() { $('#' + id).remove(); }, 1000);
		// 	})
		// })(zerglingId)

		zerglingIndex++;
	}
}

var removeZergling = function(id) {
	$('#zergling' + id +'_container').remove()
}

// On Ready handler
$( function() {
	$('#hive').click(function() {
		$('#spawn').prop('disabled', true);
		setTimeout(spawnZerglings, 750);
	})

	$('#brood').on("click", "button", function(event) {
		$(this).prop('disabled', true);
		$(this).prop('class', 'dead');
		console.log("removeZergling(" + $(this).prop("id") + ")");
		$(this).fadeOut('slow', function() {$('#zergling' + $(this).prop("id") +'_container').remove() });
	})
})