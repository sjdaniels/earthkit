<cfoutput>
<!doctype html>
<html lang="en">
<head>
	<!--- Metatags --->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="EarthKit - A rock duo that sounds like a quattro">
    <meta name="author" content="Padawan Web Productions">

 	<!-- External CSS: Font, Icons, Minimal Reset -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=Orbitron:wght@600;800;900&display=swap" rel="stylesheet">

	<link rel="apple-touch-icon" sizes="57x57" href="/includes/images/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="/includes/images/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/includes/images/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/includes/images/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/includes/images/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/includes/images/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/includes/images/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/includes/images/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/includes/images/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="/includes/images/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/includes/images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/includes/images/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/includes/images/favicon/favicon-16x16.png">
	<link rel="manifest" href="/includes/images/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="##ffffff">
	<meta name="msapplication-TileImage" content="/includes/images/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="##ffffff">

	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#">
	<link href="#html.elixirPath('css/earthkit.css')#" rel="stylesheet">
	<script src="https://kit.fontawesome.com/8cf7be7976.js" crossorigin="anonymous"></script>


	<!--- Title --->
	<title>EarthKit</title>
</head>

<body>

	#view("main/navbar")#
	#view("main/hero")#
	#view("main/video")#
	#view("main/audio")#
	#view("main/tour")#
	#view("main/epk")#

	<footer class="container text-center py-5">
		<small>© <span id="year"></span> EarthKit. All rights reserved. All wrongs reversed.</small>
	</footer>

	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="#html.elixirPath('js/vendor.js')#"></script>
	<script src="#html.elixirPath('js/lib.js')#"></script>
	<script src="#html.elixirPath('js/runtime.js')#"></script>
</body>
</html>
</cfoutput>