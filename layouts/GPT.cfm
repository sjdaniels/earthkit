<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>EarthKit — Neon Pop/Rock Duo</title>

		<!-- Bootstrap / Icons -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=Orbitron:wght@600;800;900&display=swap" rel="stylesheet">
	
	</head>
	<body class="neon-stage">
		<!-- ===== Navbar ===== -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
			<div class="container">
				<a class="navbar-brand d-flex align-items-center" href="#top">
					<!-- Inline SVG EK logo (replace paths with your own vector if desired) -->
					<svg class="ek-logo me-2" viewBox="0 0 1017 768" aria-hidden="true">
						<defs>
							<filter id="ekGlow" x="-50%" y="-50%" width="200%" height="200%">
								<feDropShadow dx="0" dy="0" stdDeviation="2" flood-color="#FF2D7A" flood-opacity="1"/>
								<feDropShadow dx="0" dy="0" stdDeviation="6" flood-color="#2FF8F0" flood-opacity="0.85"/>
							</filter>
						</defs>
						<g class="ek-neon-shadow" filter="url(#ekGlow)">
							<!-- Minimal stylized EK mark (3 horizontal + K) to mimic brush logo -->
							<rect x="70" y="120" width="420" height="70" rx="18" fill="#D3162A"></rect>
							<rect x="70" y="350" width="420" height="70" rx="18" fill="#D3162A"></rect>
							<rect x="70" y="580" width="420" height="70" rx="18" fill="#D3162A"></rect>
							<path d="M680 120 L940 380 L680 640" stroke="#D3162A" stroke-width="120" stroke-linecap="round" stroke-linejoin="round" fill="none" />
						</g>
					</svg>
					<span>EARTHKIT</span>
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ekNav" aria-controls="ekNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="ekNav">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link nav-underline active" href="#music">Music</a></li>
						<li class="nav-item"><a class="nav-link nav-underline" href="#video">Video</a></li>
						<li class="nav-item"><a class="nav-link nav-underline" href="#tour">Tour</a></li>
						<li class="nav-item"><a class="nav-link nav-underline" href="#epk">EPK</a></li>
					</ul>
					<ul class="navbar-nav ms-3">
						<li class="nav-item"><a class="nav-link" target="_blank" href="https://instagram.com" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a></li>
						<li class="nav-item"><a class="nav-link" target="_blank" href="https://youtube.com" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a></li>
						<li class="nav-item"><a class="nav-link" target="_blank" href="https://facebook.com" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- ===== Hero ===== -->
		<header id="top" class="hero container">
			<p class="kicker mb-2">POP / ROCK DUO</p>
			<h1 class="display-3">Neon-Driven Hooks. Future-Ready Sound.</h1>
			<p class="lead">Two voices. One pulse. Electric guitars. Glossy synths. Built for big rooms, small screens, and late nights in a neon city.</p>
			<div class="d-flex gap-2 justify-content-center mt-3 flex-wrap">
				<a href="#music" class="btn btn-neon btn-lg"><i class="fa-solid fa-play me-2"></i>Listen</a>
				<a href="#tour" class="btn btn-ghost btn-lg"><i class="fa-solid fa-ticket me-2"></i>See Us Live</a>
			</div>
		</header>

		<!-- ===== Music ===== -->
		<section id="music" class="container py-5">
			<div class="d-flex align-items-center justify-content-between mb-3">
				<h2 class="h3 m-0">Music</h2>
				<span class="badge rounded-pill text-bg-dark border" style="border-color:rgba(47,248,240,.35)!important; color:var(--cyan)!important;">Latest Singles</span>
			</div>
			<div class="row g-3">
				<div class="col-md-4">
					<div class="card h-100 p-3">
						<h3 class="h5">City of Echoes</h3>
						<p class="mb-3 text-secondary">A midnight chase through neon streets.</p>
						<button class="btn btn-outline-light w-100 js-tilt">Play Preview</button>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card h-100 p-3">
						<h3 class="h5">Satellite Hearts</h3>
						<p class="mb-3 text-secondary">Anthemic hooks and shimmering guitars.</p>
						<button class="btn btn-outline-light w-100 js-tilt">Play Preview</button>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card h-100 p-3">
						<h3 class="h5">Zero Gravity</h3>
						<p class="mb-3 text-secondary">Where synthwave meets stadium rock.</p>
						<button class="btn btn-outline-light w-100 js-tilt">Play Preview</button>
					</div>
				</div>
			</div>
		</section>

		<!-- ===== Video ===== -->
		<section id="video" class="container py-5">
			<div class="d-flex align-items-center justify-content-between mb-3">
				<h2 class="h3 m-0">Video</h2>
				<span class="badge rounded-pill text-bg-dark" style="border:1px solid rgba(255,255,255,.18)">Watch</span>
			</div>
			<div class="row g-3">
				<div class="col-lg-4">
					<div class="card p-2">
						<div class="ratio ratio-16x9">
							<iframe src="https://www.youtube.com/embed/dQw4w9WgXcQ" title="YouTube video" allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="card p-2">
						<div class="ratio ratio-16x9">
							<iframe src="https://www.youtube.com/embed/oHg5SJYRHA0" title="YouTube video" allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="card p-2">
						<div class="ratio ratio-16x9">
							<iframe src="https://www.youtube.com/embed/J---aiyznGQ" title="YouTube video" allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- ===== Tour ===== -->
		<section id="tour" class="container py-5">
			<div class="d-flex align-items-center justify-content-between mb-3">
				<h2 class="h3 m-0">Tour</h2>
				<span class="badge rounded-pill text-bg-dark" style="border:1px solid rgba(255,255,255,.18)">On The Road</span>
			</div>
			<div class="card p-3">
				<div class="table-responsive">
					<table class="table table-dark table-borderless align-middle mb-0">
						<thead>
							<tr>
								<th scope="col">Date</th>
								<th scope="col">City</th>
								<th scope="col">Venue</th>
								<th scope="col" class="text-end">Tickets</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Aug 22</td>
								<td>Los Angeles, CA</td>
								<td>The Neon Room</td>
								<td class="text-end"><a class="btn btn-outline-light btn-sm" href="#">Buy</a></td>
							</tr>
							<tr>
								<td>Aug 24</td>
								<td>Seattle, WA</td>
								<td>Electric Harbor</td>
								<td class="text-end"><a class="btn btn-outline-light btn-sm" href="#">Buy</a></td>
							</tr>
							<tr>
								<td>Aug 25</td>
								<td>Portland, OR</td>
								<td>Skyline Theatre</td>
								<td class="text-end"><a class="btn btn-outline-light btn-sm" href="#">Buy</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>

		<!-- ===== EPK ===== -->
		<section id="epk" class="container py-5">
			<div class="d-flex align-items-center justify-content-between mb-3">
				<h2 class="h3 m-0">EPK</h2>
				<span class="badge rounded-pill text-bg-dark" style="border:1px solid rgba(255,255,255,.18)">Press / Booking</span>
			</div>
			<div class="row g-3">
				<div class="col-lg-8">
					<div class="card p-3 h-100">
						<h3 class="h5">About EarthKit</h3>
						<p class="text-secondary mb-0">Downloadable one‑sheet, hi‑res photos, stage plot, and tech rider. Contact: <a href="mailto:booking@earthkit.fm" class="link-light">booking@earthkit.fm</a></p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="card p-3 h-100">
						<h3 class="h5">Downloads</h3>
						<ul class="list-unstyled mb-0">
							<li class="mb-2"><i class="fa-solid fa-file-arrow-down me-2"></i>EPK PDF</li>
							<li class="mb-2"><i class="fa-solid fa-images me-2"></i>Press Photos</li>
							<li><i class="fa-solid fa-vector-square me-2"></i>Logo Pack</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<footer class="container text-center py-5">
			<small>© <span id="year"></span> EarthKit. All rights reserved.</small>
		</footer>

		<!-- Scripts -->
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

		<script>
			// Current Year
			document.getElementById('year').textContent = new Date().getFullYear();

			// Smooth scroll & active nav highlighting
			$(function(){
				$('a.nav-link').on('click', function(e){
					const target = $(this.getAttribute('href'));
					if(target.length){ e.preventDefault(); $('html, body').animate({scrollTop: target.offset().top - 72}, 500); }
				});

				const sections = ['#music','#video','#tour','#epk'];
				$(window).on('scroll', function(){
					const pos = $(this).scrollTop() + 90;
					for(const id of sections){
						const $el = $(id);
						if($el.length && pos >= $el.offset().top && pos < $el.offset().top + $el.outerHeight()){
							$('a.nav-link').removeClass('active');
							$('a.nav-link[href="'+id+'"]').addClass('active');
						}
					}
				});
				$(window).trigger('scroll');
			});

			// Tiny tilt/shine effect on buttons & cards
			$('.js-tilt, .card').on('mousemove', function(e){
				const r = this.getBoundingClientRect();
				const x = e.clientX - r.left, y = e.clientY - r.top;
				const rx = ((y / r.height) - 0.5) * 6; // tilt range
				const ry = ((x / r.width) - 0.5) * -6;
				this.style.transform = `perspective(700px) rotateX(${rx}deg) rotateY(${ry}deg)`;
				this.style.backgroundImage = `radial-gradient(circle at ${x}px ${y}px, rgba(47,248,240,.16), rgba(255,45,122,.0) 40%)`;
			});
			$('.js-tilt, .card').on('mouseleave', function(){
				this.style.transform = '';
				this.style.backgroundImage = '';
			});

			// Navbar shrink on scroll for subtle motion
			window.addEventListener('scroll', () => {
				const scrolled = window.scrollY > 10;
				document.querySelector('.navbar').classList.toggle('py-0', scrolled);
			});
		</script>
	</body>
</html>
