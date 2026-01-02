<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Feedback</title>
  <link rel="stylesheet" type="text/css" href="assets/css/as-alert-message.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/feedback.css">
  <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
</head>

<body>
  <header id="site-header" class="w3l-header fixed-top">
    <!--/nav-->
    <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
      <div class="container">
        <h1><a class="navbar-brand" href="index.jsp"><span class="fa fa-ticket" aria-hidden="true" style="color: gold"></span>ABC Cinema</a></h1>
        
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
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="feedback.jsp">Feedback</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
    
  <!-- Feedback -->
  <div class="container">
    <h3>FEEDBACK</h3><br>

    <form name="Feedback" action="Feedback" method="POST" onsubmit="return validateForm()">
      <div class="row100" id="fname-row100">
        <div class="col">
          <div class="inputBox" id="fname-inputBox">
            <input type="text" name="fname" onclick="triggerAnim('fname')"/>
            <span class="text">First Name</span>
            <span class="line" id="fname-line"></span>
          </div>
        </div>
        <div class="col">
          <div class="inputBox" id="lname-inputBox">
            <input type="text" name="lname" onclick="triggerAnim('lname')"/>
            <span class="text">Last Name</span>
            <span class="line" id="lname-line"></span>
          </div>
        </div>
      </div>
      <div class="row100" id="email-row100">
        <div class="col">
          <div class="inputBox" id="email-inputBox">
            <input type="email" name="email" pattern="[^ @]*@[^ @]*" onclick="triggerAnim('email')"/>
            <span class="text">Email</span>
            <span class="line" id="email-line"></span>
          </div>
        </div>
        <div class="col">
          <div class="inputBox" id="tel-inputBox">
            <input type="tel" name="m-num" onclick="triggerAnim('tel')" />
            <span class="text">Mobile Number</span>
            <span class="line" id="tel-line"></span>
          </div>
        </div>
      </div>
      <div class="row100">
        <div class="col">
          <div class="inputBox textarea">
            <textarea name="msg"></textarea>
            <span class="text">Type your message Here...</span>
            <span class="line"></span>
          </div>
        </div>
      </div>
      <div class="row100">
        <div class="col">
          <div class="submitbutton">
            <button class="btn submitbtn" type="submit">SUBMIT</button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <script type="text/javascript" src="assets/js/contact-us.js"></script>
  <script type="text/javascript" src="assets/js/as-alert-message.min.js"></script>
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <!--/theme-change-->
  <script src="assets/js/theme-change.js"></script>
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
</body>

</html>