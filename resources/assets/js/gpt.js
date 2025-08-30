// Current Year
document.getElementById('year').textContent = new Date().getFullYear();

// Smooth scroll & active nav highlighting
$(function(){
	$('a.nav-link,a.navbar-brand,a.btn-nav').on('click', function(e){
		const target = $(this.getAttribute('href'));
		if(target.length){ e.preventDefault(); $('html, body').animate({scrollTop: target.offset().top - 72}, 100); }
	});

	const sections = ['#music','#video','#tour','#epk'];
	const badgeMap = {
		'#music': '#music .badge',
		'#video': '#video .badge',
		'#tour': '#tour .badge',
		'#epk': '#epk .badge'
	};

	$(window).on('scroll', function(){
		const pos = $(this).scrollTop() + 90;
		for(const id of sections){
			const $el = $(id);
			if($el.length && pos >= $el.offset().top && pos < $el.offset().top + $el.outerHeight()){
				$('a.nav-link').removeClass('active');
				$('a.nav-link[href="'+id+'"]').addClass('active');

				// update badges
				$('.badge').removeClass('badge-neon').addClass('badge-default');
				$(badgeMap[id]).removeClass('badge-default').addClass('badge-neon');
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
	document.querySelector('.navbar').classList.toggle('py-3', scrolled);
});
