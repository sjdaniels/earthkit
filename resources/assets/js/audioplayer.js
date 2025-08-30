// ===== EarthKit Audio Player (robust icon sync + scoped) =====
(function () {
	// Your playlist
	const playlist = [
		{ title: 'Not Your Birthday', src: '/includes/audio/Birthday.mp3' },
		{ title: 'Rio Grande',        src: '/includes/audio/Rio.mp3' },
		{ title: "Magpie's Nest",     src: '/includes/audio/Magpie.mp3' }
	];

	const $root = $('.ek-audio');           // scope to the player card
	if (!$root.length) return;

	const audio  = document.getElementById('ekAudio');
	if (!audio) return;

	let current = 0;

	// Cache (scoped to the player)
	const $title  = $root.find('.ek-track-title');
	const $toggle = $root.find('.ek-toggle');
	const $prev   = $root.find('.ek-prev');
	const $next   = $root.find('.ek-next');
	const $seek   = $root.find('.ek-seek');
	const $vol    = $root.find('.ek-volume');
	const $cur    = $root.find('.ek-current');
	const $dur    = $root.find('.ek-duration');
	const $rows   = $root.find('.ek-playlist .list-group-item');
	const $rowBtns= $root.find('.ek-play-item'); // per-track play buttons

	function fmt(t) {
		t = Math.max(0, Math.floor(t || 0));
		const m = Math.floor(t / 60);
		const s = String(t % 60).padStart(2, '0');
		return `${m}:${s}`;
	}

	function setActiveRow() {
		$rows.removeClass('active').eq(current).addClass('active');
	}

	function updateIconsImmediate() {
		const playing = !audio.paused && !audio.ended && audio.currentTime >= 0;

		// Main toggle button
		$toggle.find('svg')
			.toggleClass('fa-play', !playing)
			.toggleClass('fa-pause', playing);

		// Per-track buttons
		$rowBtns.find('svg').removeClass('fa-pause').addClass('fa-play');
		if (playing) {
			$rowBtns.filter(`[data-index="${current}"]`).find('svg')
				.removeClass('fa-play').addClass('fa-pause');
		}
	}

	function load(index) {
		current = (index + playlist.length) % playlist.length;
		audio.src = playlist[current].src;
		$title.text(playlist[current].title);
		setActiveRow();
		// After loading we are paused until play() => reflect that
		updateIconsImmediate();
	}

	function play()  { audio.play().catch(() => {}); updateIconsImmediate(); }
	function pause() { audio.pause();                  updateIconsImmediate(); }

	// Init
	load(0);
	audio.volume = parseFloat($vol.val() || 0.9);

	// Media events (redundant but keeps things honest across browsers)
	audio.addEventListener('loadedmetadata', () => { $dur.text(fmt(audio.duration)); });
	audio.addEventListener('timeupdate', () => {
		if (!isNaN(audio.duration)) {
			$seek.val((audio.currentTime / audio.duration) * 100);
			$cur.text(fmt(audio.currentTime));
		}
	});
	['play','playing','pause','ended'].forEach(evt => audio.addEventListener(evt, updateIconsImmediate));
	audio.addEventListener('ended', () => { load(current + 1); play(); });

	// Controls
	$toggle.on('click', () => (audio.paused ? play() : pause()));
	$prev.on('click',   () => { load(current - 1); play(); });
	$next.on('click',   () => { load(current + 1); play(); });

	// Playlist buttons
	$rowBtns.on('click', function () {
		const idx = parseInt(this.dataset.index, 10);
		if (idx === current) {
			audio.paused ? play() : pause();
		} else {
			load(idx); play();
		}
	});

	// Seek & volume
	$seek.on('input', function () {
		if (!isNaN(audio.duration)) audio.currentTime = (this.value / 100) * audio.duration;
	});
	$vol.on('input', function () { audio.volume = parseFloat(this.value); });

	// First paint
	updateIconsImmediate();
})();

// ===== Visualizer (mirrored bars + reliable resume) =====
(function(){
	const audioEl = document.getElementById('ekAudio');
	const canvas  = document.getElementById('ekVisualizer');
	if(!audioEl || !canvas) return;

	const ctx2d = canvas.getContext('2d', { alpha: true });

	let audioCtx, analyser, source, dataArray, rafId = null;

	function resizeCanvas(){
		canvas.width  = canvas.offsetWidth;
		canvas.height = canvas.offsetHeight;
	}

	function initAudioGraph(){
		if (audioCtx) return;
		audioCtx = new (window.AudioContext || window.webkitAudioContext)();
		analyser = audioCtx.createAnalyser();
		analyser.fftSize = 256; // good balance of responsiveness and smoothness
		dataArray = new Uint8Array(analyser.frequencyBinCount);

		source = audioCtx.createMediaElementSource(audioEl);
		source.connect(analyser);
		analyser.connect(audioCtx.destination);

		resizeCanvas();
		window.addEventListener('resize', resizeCanvas);
	}

	function start(){
		// (Re)start the RAF loop if not running
		if (rafId == null){
			rafId = requestAnimationFrame(renderFrame);
		}
	}

	function stop(){
		if (rafId != null){
			cancelAnimationFrame(rafId);
			rafId = null;
		}
	}

	function renderFrame(){
		rafId = requestAnimationFrame(renderFrame);

		// pull fresh data
		analyser.getByteFrequencyData(dataArray);

		const w = canvas.width;
		const h = canvas.height;
		const mid = h / 2;

		// clear
		ctx2d.clearRect(0, 0, w, h);

		// optional: faint center line glow
		ctx2d.save();
		const centerGrad = ctx2d.createLinearGradient(0, mid - 1, 0, mid + 1);
		centerGrad.addColorStop(0, 'rgba(47,248,240,0.0)');
		centerGrad.addColorStop(0.5, 'rgba(255,255,255,0.15)');
		centerGrad.addColorStop(1, 'rgba(255,45,122,0.0)');
		ctx2d.fillStyle = centerGrad;
		ctx2d.fillRect(0, mid - 1, w, 2);
		ctx2d.restore();

		// draw mirrored bars
		// step > 1 to reduce bar count (denser on wide screens)
		const step = 2;
		const visibleBins = Math.floor(dataArray.length / 1.5); // ignore noisiest highs
		const barGap = 1;
		const barWidth = (w / (visibleBins / step)) - barGap;

		let x = 0;
		for (let i = 0; i < visibleBins; i += step){
			const v = dataArray[i] / 255;
			const barH = v * (h * 0.48); // scale so it doesn’t touch edges

			// neon gradient per bar (top/bottom share same colors)
			const grad = ctx2d.createLinearGradient(0, mid - barH, 0, mid + barH);
			grad.addColorStop(0.0, 'rgba(255,45,122,0.95)'); // pink
			grad.addColorStop(1.0, 'rgba(47,248,240,0.95)'); // cyan

			ctx2d.fillStyle = grad;
			ctx2d.shadowColor = 'rgba(255,45,122,0.85)';
			ctx2d.shadowBlur = 12;

			// top half (extends upward from center)
			ctx2d.fillRect(x, mid - barH, barWidth, barH);

			// bottom half (extends downward from center) — mirror
			ctx2d.fillRect(x, mid, barWidth, barH);

			x += barWidth + barGap;
		}
	}

	// Wire up media events
	audioEl.addEventListener('play', async () => {
		if (!audioCtx) initAudioGraph();
		if (audioCtx.state === 'suspended'){
			try { await audioCtx.resume(); } catch(e){}
		}
		start(); // ensure RAF is running when playback resumes
	});

	// some browsers dispatch 'playing' later than 'play'
	audioEl.addEventListener('playing', start);

	audioEl.addEventListener('pause', stop);
	audioEl.addEventListener('ended', stop);
})();
