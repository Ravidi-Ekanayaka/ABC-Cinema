<!doctype html>
<html lang="zxx">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Locations</title>
	<link rel="stylesheet" href="assets/css/style-starter.css">
	<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
		rel="stylesheet">
	
</head>

<body>
	<!-- header -->
	<header id="site-header" class="w3l-header fixed-top">
		<!--/nav-->
		<nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
			<div class="container">
				<h1><a class="navbar-brand" href="index.jsp"><span class="fa fa-ticket" aria-hidden="true" style="color: gold"></span>
						ABC Cinema</a></h1>
				<button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<!-- <span class="navbar-toggler-icon"></span> -->
					<span class="fa icon-expand fa-bars"></span>
					<span class="fa icon-close fa-times"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a class="nav-link" href="index.jsp">Home</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="locations.jsp">Locations</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.jsp">About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="Feedback.jsp">Feedback</a>
						</li>
					</ul>

				
					</div>

				</div>
				
			</div>
		</nav>
	</header>
	<!--/breadcrumbs -->
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
		</nav>
	</div>
	<!--/movies -->
	<!--grids-sec1-->
	<section class="w3l-grids">
		<div class="grids-main py-4">
			<div class="container py-lg-4">
				<div class="headerhny-title">
					<h3 class="hny-title">Locations</h3>
				</div>
				<div class="owl-four owl-carousel owl-theme">
					<div class="item vhny-grid">
						<div class="box16">
							<a href="https://goo.gl/maps/1iMZNT4tkL2JD8s8A">
								<figure>
									<img class="img-fluid" src="assets/images/Scope.jpeg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Colombo City Center - Scope Cinema</h3>
								</div>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="https://goo.gl/maps/bqGZW6AynvUS1SRL7">
								<figure>
									<img class="img-fluid" src="assets/images/pvr luxe.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">PVR LUXE ONE GALLE FACE MALL</h3>
								</div>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="https://goo.gl/maps/bqGZW6AynvUS1SRL7">
								<figure>
									<img class="img-fluid" src="assets/images/PVR.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">PVR One Galle Face Mall</h3>
								</div>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="https://goo.gl/maps/af6oYwBKWUUv2WMC7">
								<figure>
									<img class="img-fluid" src="assets/images/Scope Liberty.png" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Liberty By Scope Cinemas</h3>
								</div>
							</a>
						</div>
                                            			
					</div>
				</div>
			</div>
		</div>
	</section>

</section>
</footer>
</body>
</html>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>
<script>
$(document).ready(function () {
$('.owl-four').owlCarousel({
loop: true,
margin: 20,
nav: false,
responsiveClass: true,
autoplay: false,
autoplayTimeout: 5000,
autoplaySpeed: 1000,
autoplayHoverPause: false,
responsive: {
	0: {
		items: 1,
		nav: false
	},
	480: {
		items: 2,
		nav: true
	},
	667: {
		items: 2,
		nav: true
	},
	1000: {
		items: 2,
		nav: true
	}
}
})
})
</script>
<script>
$(document).ready(function () {
$('.owl-two').owlCarousel({
loop: true,
margin: 40,
nav: false,
responsiveClass: true,
autoplay: true,
autoplayTimeout: 5000,
autoplaySpeed: 1000,
autoplayHoverPause: false,
responsive: {
	0: {
		items: 1,
		nav: false
	},
	480: {
		items: 2,
		nav: true
	},
	667: {
		items: 2,
		margin: 20,
		nav: true
	},
	1000: {
		items: 3,
		nav: true
	}
}
})
})
</script>
<!-- script for owlcarousel -->


<!--/MENU-JS-->
<script>
$(window).on("scroll", function () {
var scroll = $(window).scrollTop();

if (scroll >= 80) {
$("#site-header").addClass("nav-fixed");
} else {
$("#site-header").removeClass("nav-fixed");
}
});

//Main navigation Active Class Add Remove
$(".navbar-toggler").on("click", function () {
$("header").toggleClass("active");
});
$(document).on("ready", function () {
if ($(window).width() > 991) {
$("header").removeClass("active");
}
$(window).on("resize", function () {
if ($(window).width() > 991) {
	$("header").removeClass("active");
}
});
});
</script>
<script src="assets/js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
$(document).ready(function () {
//Horizontal Tab
$('#parentHorizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion
width: 'auto', //auto or any width like 600px
fit: true, // 100% fit in a container
tabidentify: 'hor_1', // The tab groups identifier
activate: function (event) { // Callback function if tab is switched
	var $tab = $(this);
	var $info = $('#nested-tabInfo');
	var $name = $('span', $info);
	$name.text($tab.text());
	$info.show();
}
});
});
</script>

<script src="assets/js/bootstrap.min.js"></script>