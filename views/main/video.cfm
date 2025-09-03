<cfoutput>
	<section id="video" class="container py-5">
		<div class="d-flex align-items-center justify-content-between mb-3">
			<h2 class="h3 m-0">Video</h2>
			<span class="badge rounded-pill badge-default">Watch</span>
		</div>

		<div class="col-lg-10 offset-lg-1 col-xxl-8 offset-xxl-2 mt-5">
			<div id="ekVideo" class="carousel slide billboard shadow-lg">
				<div class="carousel-indicators billboard-dots">
					<button type="button" data-bs-target="##ekVideo" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="##ekVideo" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="##ekVideo" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>

				<div class="billboard-frame">
					<!-- viewport: NO .ratio here -->
					<div class="billboard-viewport">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="ratio ratio-16x9">
									<iframe
										class="billboard-video"
										src="https://www.youtube.com/embed/1eUf_Q-GVvk?enablejsapi=1&rel=0"
										title="Rio Grande (Live at Milk St.)"
										allow="autoplay; encrypted-media; picture-in-picture"
										allowfullscreen
										loading="lazy">
									</iframe>
								</div>
							</div>

							<div class="carousel-item">
								<div class="ratio ratio-16x9">
									<iframe
										class="billboard-video"
										src="https://www.youtube.com/embed/4d3ooQqMApY?enablejsapi=1&rel=0&modestbranding=1"
										title="Survive (Live from Home)"
										allow="autoplay; encrypted-media; picture-in-picture"
										allowfullscreen
										loading="lazy">
									</iframe>
								</div>
							</div>

							<div class="carousel-item">
								<div class="ratio ratio-16x9">
									<iframe
										class="billboard-video"
										src="https://www.youtube.com/embed/98Gh6L9svm0?enablejsapi=1&rel=0&modestbranding=1"
										title="Keyboard Cat"
										allow="autoplay; encrypted-media; picture-in-picture"
										allowfullscreen
										loading="lazy">
									</iframe>
								</div>
							</div>
						</div>
					</div>

					<!--- <div class="billboard-legs"><span></span><span></span></div> --->

					<button class="carousel-control-prev billboard-control" type="button" data-bs-target="##ekVideo" data-bs-slide="prev" aria-label="Previous">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					</button>
					<button class="carousel-control-next billboard-control" type="button" data-bs-target="##ekVideo" data-bs-slide="next" aria-label="Next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
					</button>
				</div>
			</div>
		</div>
	</section>
</cfoutput>