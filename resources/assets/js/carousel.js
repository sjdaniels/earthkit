// ===== Billboard Carousel video handling =====

// Helper: stop YouTube video via postMessage API
function stopYouTube($iframe){
	try{
		$iframe[0].contentWindow.postMessage(JSON.stringify({
			'event': 'command',
			'func': 'stopVideo',
			'args': []
		}), '*');
	}catch(e){}
}

// Optional lazy-load: if you prefer, set data-src and we'll swap into src on first show
function ensureIframeSrc($slide){
	const $iframe = $slide.find('iframe');
	const dataSrc = $iframe.attr('data-src');
	if(dataSrc && !$iframe.attr('src')){
		$iframe.attr('src', dataSrc);
	}
}

const $carousel = $('#ekVideo');

// On slide start: stop the current video's playback
$carousel.on('slide.bs.carousel', function(e){
	const $current = $(this).find('.carousel-item.active');
	const $iframe = $current.find('iframe[src*="youtube.com/embed"]');
	if($iframe.length){ stopYouTube($iframe); }
});

// On slide finished: lazy-load next slide if needed
$carousel.on('slid.bs.carousel', function(e){
	const $active = $(this).find('.carousel-item.active');
	ensureIframeSrc($active);
});

// If using lazy-load, convert your iframe src -> data-src and leave src blank.
// Example:
// <iframe data-src="https://www.youtube.com/embed/ID?enablejsapi=1&rel=0&modestbranding=1"></iframe>
