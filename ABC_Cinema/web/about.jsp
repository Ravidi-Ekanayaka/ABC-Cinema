<!doctype html>
<html lang="zxx">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>About</title>

	<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css">

	<link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
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
						<li class="nav-item">
							<a class="nav-link" href="locations.jsp">Locations</a>
						</li>

						<li class="nav-item active">
							<a class="nav-link" href="about.jsp">About</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="Feedback.jsp">Feedback</a>
						</li>
					</ul>
				</div>
				
			</div>
		</nav>
	</header>
	<!--/breadcrumbs -->
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
			<div class="container page-wrapper">
			</div>
		</nav>
	</div>
	<!-- /about-->
	<div class="w3l-ab-grids py-5">

		<div class="container py-lg-4">
			
				
				
                            <h3 style=" color: white; text-align: center">ABOUT PROJECT</h3>
                            <p class="mt-3">
                                &nbsp;&nbsp;&nbsp; ABC Cinema PVT Ltd. is the largest and the most premium film exhibition company in Sri Lanka.
                                The company has made exceptional technology like the IMAX, 4DX and ECX (Enhanced Cinema Experience) accessible to its audience.
                                ABC Cinema has distributed more than 75+ Sinhala Movies, 60+ Hollywood Movies, 40+ Bollywood Movies and 25+ Tamil Movies.
                                ABC Cinema has the highest box office shares of independent foreign language films in the country.
                                Currently ABC operates a cinema circuit of 120 Screens at 68 Properties in several Cities in Sri Lanka.
                                <br><br>
                                &nbsp;&nbsp;&nbsp; And in our project, we use servlets, jsp in java language to develop this website properly.
                                As well we added owl carousel to create responsive carousel sliders. 
                                <br><br>
                                &nbsp;&nbsp;&nbsp; The ABC cinema currently showing 4 movies and customers can get more details about the movies, as well they can book several seats also.
                                In the seat booking page customer can configure the total that they need to pay and how many seats they ordered currently.
                                Here we connect PayPal as a payment gate way.
                                So, customers can do their payments using Papal account or Using their Credit/Debit cards.
                                And the one of special thing is they must do their payment in USD (US Dollars) because PayPal isn?t working for LKR.
                                And another special thing is if the customer need to cancel the seats they can go back from the PayPal payment page so then it will automatically canceled.
                                But after customer do the payment, they cannot cancel the seat and won?t reject the payment as well. 
                                <br><br>
                                &nbsp;&nbsp;&nbsp; ABC Cinema web site we added several pages as home page, location page, about page, feedback page, and e ticket page.
                                The database connection is done with feedback page. This page connected to a data base using servlets.
                                It will save the messages that send by customers as their feedbacks.
                                And we added our team members to the about page and you can contact them using LinkedIn by clicking their names that we added to the about page. 

                            </p>
                                        
                                         <h3 style=" color: white; text-align: center; margin-top: 50px">Group Members</h3>
                                                    
                                        <br><div style="margin-top: -2px; margin-left: 373px">
                                            <a href="https://www.linkedin.com/in/ravindi-ekanayaka-244a57174/" title="Project & Group leader"><h5>Ravidi Ekanayake</h5></a><br>
                                            <a href="https://www.linkedin.com/in/eshan-edirisinghe-77758221b/" title="Programming Leader"><h5>Eshan Edirisinghe</h5></a><br>
                                            <a href="https://www.linkedin.com/in/chamod-fernando-3aab55221/" title="Planning Leader"><h5>Chamod Fernando</h5></a><br>
                                            
                                            
                                        </div>
                                        <div style="margin-left: 606px; margin-top: -155px">
                                            <a href="https://www.linkedin.com/in/upani-newanya-77aab7214/" title="Quality leader"><h5>Upani Newanya</h5></a><br>
                                            <a href="https://www.linkedin.com/in/ashan-vithanage-979393256/" title="Technical Leader"><h5>Ashan Vithanage</h5></a><br>
                                            <a href="" title="Testing & Maintenance Leader"><h5>Charuka Nilusha</h5></a><br>
                                            
                                            
				</div>
                        </div>
                </div>

        </div>

</body>

</html>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script type="text/javascript" src='assets/js/swiper.min.js'></script>
<script>
	$('.counter').countUp();
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script>
	const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
	const currentTheme = localStorage.getItem('theme');

	if (currentTheme) {
		document.documentElement.setAttribute('data-theme', currentTheme);

		switchTextColor(currentTheme);

		if (currentTheme === 'dark') {
			toggleSwitch.checked = true;
		}
	}

	function switchTextColor(currTheme) {

		if (currTheme === 'light') {
			document.getElementById("swiper-container-h1").style.color = 'black';
			document.getElementById("details-h3-1").style.color = 'black';
			document.getElementById("details-h3-2").style.color = 'black';
			document.getElementById("details-h3-3").style.color = 'black';
			document.getElementById("details-h3-4").style.color = 'black';
			document.getElementById("details-h3-5").style.color = 'black';
			document.getElementById("details-h3-6").style.color = 'black';
		} else {
			document.getElementById("swiper-container-h1").style.color = 'white';
			document.getElementById("details-h3-1").style.color = 'white';
			document.getElementById("details-h3-2").style.color = 'white';
			document.getElementById("details-h3-3").style.color = 'white';
			document.getElementById("details-h3-4").style.color = 'white';
			document.getElementById("details-h3-5").style.color = 'white';
			document.getElementById("details-h3-6").style.color = 'white';
		}
	}
	toggleSwitch.addEventListener('change', switchTheme, false);
</script>
<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
	$(document).ready(function () {
		$('.owl-team').owlCarousel({
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
					items: 2,
					nav: false
				},
				480: {
					items: 2,
					nav: true
				},
				667: {
					items: 3,
					nav: true
				},
				1000: {
					items: 4,
					nav: true
				}
			}
		})
	})
</script>


<script>
	var swiper = new Swiper('.swiper-container', {
		effect: 'coverflow',
		grabCursor: true,
		centeredSlides: true,
		slidesPerView: 'auto',
		coverflowEffect: {
			rotate: 50,
			stretch: 0,
			depth: 100,
			modifier: 1,
			slideShadows: true,
		},
		pagination: {
			el: '.swiper-pagination',
		},
	});
</script>
<script>
	$(document).ready(function () {
		$('.owl-three').owlCarousel({
			loop: true,
			margin: 20,
			nav: false,
			responsiveClass: true,
			autoplay: true,
			autoplayTimeout: 5000,
			autoplaySpeed: 1000,
			autoplayHoverPause: false,
			responsive: {
				0: {
					items: 2,
					nav: false
				},
				480: {
					items: 2,
					nav: true
				},
				667: {
					items: 3,
					nav: true
				},
				1000: {
					items: 6,
					nav: true
				}
			}
		})
	})
</script>
<!-- for tesimonials carousel slider -->
<script>
	$(document).ready(function () {
		$(".owl-clients").owlCarousel({
			loop: true,
			margin: 40,
			responsiveClass: true,
			responsive: {
				0: {
					items: 1,
					nav: true
				},
				736: {
					items: 2,
					nav: false
				},
				1000: {
					items: 3,
					nav: true,
					loop: false
				}
			}
		})
	})
</script>
<!-- script for owlcarousel -->
<!-- disable body scroll which navbar is in active -->
<script>
	$(function () {
		$('.navbar-toggler').click(function () {
			$('body').toggleClass('noscroll');
		})
	});
</script>
<!-- disable body scroll which navbar is in active -->

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
<script src="assets/js/bootstrap.min.js"></script>