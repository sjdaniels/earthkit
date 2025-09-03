<cfoutput>
	<!-- ===== Music ===== -->
	<section id="music" class="container py-5">
		<div class="d-flex align-items-center justify-content-between mb-3">
			<h2 class="h3 m-0">Music</h2>
			<span class="badge rounded-pill badge-neon">Latest Singles</span>
		</div>

		<div class="row align-items-center mb-5">
			<div class="col-lg-9">
				<!-- Neon Audio Player -->
				<div class="ek-audio card p-3 p-md-4">
					<div class="d-flex align-items-center gap-3 flex-wrap">
						<button class="btn btn-outline-light ek-prev" aria-label="Previous"><i class="fa-solid fa-backward-step"></i></button>
						<button class="btn btn-neon ek-toggle" aria-label="Play/Pause"><i class="fa-solid fa-play"></i></button>
						<button class="btn btn-outline-light ek-next" aria-label="Next"><i class="fa-solid fa-forward-step"></i></button>

						<div class="flex-grow-1">
							<div class="ek-track-title fw-bold">—</div>
							<div class="d-flex align-items-center gap-2 mt-1">
								<small class="ek-time ek-current">0:00</small>
								<input class="form-range ek-seek flex-grow-1" type="range" min="0" max="100" value="0" step="0.1" aria-label="Seek">
								<small class="ek-time ek-duration">0:00</small>
							</div>
						</div>

						<div class="d-flex align-items-center ms-auto gap-2">
							<i class="fa-solid fa-volume-low"></i>
							<input class="form-range ek-volume" type="range" min="0" max="1" step="0.01" value="0.9" aria-label="Volume">
						</div>
					</div>

					<!-- Playlist -->
					<ul class="list-group list-group-flush mt-3 ek-playlist">
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<span class="ek-item-title">Not Your Birthday</span>
							<button class="btn btn-sm btn-outline-light ek-play-item" data-index="0"><i class="fa-solid fa-play"></i></button>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<span class="ek-item-title">Rio Grande</span>
							<button class="btn btn-sm btn-outline-light ek-play-item" data-index="1"><i class="fa-solid fa-play"></i></button>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<span class="ek-item-title">Magpie's Nest</span>
							<button class="btn btn-sm btn-outline-light ek-play-item" data-index="2"><i class="fa-solid fa-play"></i></button>
						</li>
					</ul>

					<!-- Visualizer -->
					<canvas id="ekVisualizer" height="50" class="w-100 mt-3"></canvas>

					<!-- Hidden audio element -->
					<audio id="ekAudio" preload="metadata"></audio>
				</div>
			</div>
			<div class="col-lg-3">
				<img src="/includes/images/jackie-haven.png" alt="Jackie Haven" class="img-fluid">
			</div>
		</div>
		<p class="text-center">And check out the debut EP <strong class="ek-flicker">Evolition</strong> - available on <a href="https://distrokid.com/hyperfollow/earthkit/evolition">all streaming platforms</a>.</p>
	</section>
</cfoutput>
