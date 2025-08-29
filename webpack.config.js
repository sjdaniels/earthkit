const elixir = require("coldbox-elixir");

module.exports = elixir(mix => {
    mix.sass("earthkit.scss");
	mix.js([
		'node_modules/@popperjs/core/dist/umd/popper.js',
		'node_modules/bootstrap/dist/js/bootstrap.bundle.js',
		'resources/assets/js/vendor/modernizr-custom.js',
		'resources/assets/js/gpt.js'
	], {
		name:"lib",
		outputDirectory:"includes/js/",
		entryDirectory:""
	})
});