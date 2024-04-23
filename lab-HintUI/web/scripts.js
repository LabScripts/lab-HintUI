var x = false

window.addEventListener('message', function(event) {
	if (event.data.action == 'show') {
		$("body").fadeOut(500);
		$(".description" ).text(event.data.desc);
		if (x) {
			$(".wrap").animate({left: '-3%'}, "slow");
			$(".wrap").animate({left: '1%'}, "slow");
		}
		$("body").fadeIn(500);
		x = true
	} else if (event.data.action == 'hide') {
		$("body").fadeOut(500);
		x = false
	}
})