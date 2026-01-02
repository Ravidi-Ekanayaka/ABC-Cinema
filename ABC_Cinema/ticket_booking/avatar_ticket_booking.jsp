<%-- 
    Document   : avatar_ticket_booking
    Created on : Jan 13, 2023, 2:09:45 PM
    Author     : Asus VivoBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ticket Booking</title>
  <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
  <link rel="stylesheet" href="https://npmcdn.com/flickity@2/dist/flickity.css">
  <link rel="stylesheet" type="text/css" href="assets/css/progress.css">

  <link rel="stylesheet" type="text/css" href="assets/css/ticket-booking.css">

  <!-- ..............For progress-bar............... -->
  <link rel="stylesheet" type="text/css" href="assets/css/e-ticket.css">

  <link rel="stylesheet" type="text/css" href="assets/css/payment.css" />
  <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/contact_us.css" type="text/css"/>

</head>

<body>
  <header id="site-header" class="w3l-header fixed-top">

    <!--/nav-->
    <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
      <div class="container">
        
        <div class="collapse navbar-collapse" id='navbarSupportedContent'>
        </div>

        
        <!-- toggle switch for light and dark theme -->
        <div class="mobile-position">
          <nav class="navigation">
            <div class="theme-switch-wrapper">
              <label class="theme-switch" for="checkbox">
                <input type="checkbox" id="checkbox">
                
              </label>
            </div>
          </nav>
        </div>
      </div>
    </nav>
  </header>

  <div class="container" id="progress-container-id">
    <div class="row">
      <div class="col">
        <div class="px-0 pt-4 pb-0 mt-3 mb-3">
          <form id="form">
            <br>
            <fieldset>
              <div id="screen-select-div">
                <h2>SHOWTIMES</h2>
                <div class="carousel carousel-nav" data-flickity='{"contain": true, "pageDots": false }'>
                    <div class="carousel-cell" id="1" onclick="myFunction(1)" >
                    <div class="date-numeric">13</div>
                    <div class="date-day">Today</div>
                  </div>

                  <div class="carousel-cell" id="2" onclick="myFunction(2)">
                    <div class="date-numeric">14</div>
                    <div class="date-day">Tomorrow</div>
                  </div>
                  <div class="carousel-cell" id="3" onclick="myFunction(3)">
                    <div class="date-numeric">15</div>
                    <div class="date-day">Monday</div>
                  </div>
                  <div class="carousel-cell" id="4" onclick="myFunction(4)">
                    <div class="date-numeric">16</div>
                    <div class="date-day">Tuesday</div>
                  </div>
                  <div class="carousel-cell" id="5" onclick="myFunction(5)">
                    <div class="date-numeric">17</div>
                    <div class="date-day">Wednesday</div>
                  </div>
                  <div class="carousel-cell" id="6" onclick="myFunction(6)">
                    <div class="date-numeric">18</div>
                    <div class="date-day">Thursday</div>
                  </div>
                  <div class="carousel-cell" id="7" onclick="myFunction(7)">
                    <div class="date-numeric">19</div>
                    <div class="date-day">Friday</div>
                  </div>
                </div>
                <ul class="time-ul">
                  <li class="time-li">
                    <div class="screens">
                      Gold Class
                    </div>
                    <div class="time-btn">
                      <button class="screen-time" onclick="timeFunction()">
                        10.00 AM
                      </button>
                      <button class="screen-time" onclick="timeFunction()">
                        07:00 PM
                      </button>
                      <button class="screen-time" onclick="timeFunction()">
                        10:00 PM
                      </button>
                    </div>
                  </li>
                  <li class="time-li">
                    <div class="screens">
                      ATMOS
                    </div>
                    <div class="time-btn">
                      <button class="screen-time" onclick="timeFunction()">
                        11:00 AM
                      </button>
                        <button class="screen-time" onclick="timeFunction()">
                        3:00 PM
                      </button>
                        <button class="screen-time" onclick="timeFunction()">
                        7:30 PM
                      </button>
                        <button class="screen-time" onclick="timeFunction()">
                        10:30 PM
                      </button>
                    </div>
                  </li>
                  <li class="time-li">
                    <div class="screens">
                      Digital 3D
                    </div>
                    
                      <button class="screen-time" onclick="timeFunction()">
                        10:15 AM
                      </button>
                      <button class="screen-time" onclick="timeFunction()">
                        2:15 PM
                      </button>
                        <button class="screen-time" onclick="timeFunction()">
                        6:15 PM
                      </button>
                        <button class="screen-time" onclick="timeFunction()">
                        8:15 PM
                      </button>
                      <button class="screen-time" onclick="timeFunction()">
                        10:00 PM
                      </button>
                    
                  </li>
                </ul>
              </div>
              <input id="screen-next-btn" type="button" name="next-step" class="next-step" value="Continue"
                disabled />
              <input type="button" name="previous-step" class="cancel-pay-btn" value="Cancel" onclick="location.href='index.jsp';" />
            </fieldset>
            <fieldset>

              <div>
                <iframe id="seat-sel-iframe"
                  style=" width: 800px; height: 550px; display: block; margin-left: auto; margin-right: auto;"
                  src="seat_sel.jsp"></iframe>
              </div>
              <br>
              <input type="button" name="next-step" class="next-step" value="Proceed to Payment" />
              <input type="button" name="previous-step" class="previous-step" value="Back" />
            </fieldset>
            <fieldset>
                
                
              <!-- Payment Page -->
              <div id="payment_div">
                <div class="payment-row">
                  <div class="col-75">
                    <div class="payment-container">
                      <div class="payment-row">
                        <div class="col-50">
                          <h3 id="payment-h3">Payment</h3>
                          <div class="payment-row payment">
                            <div class="col-50 payment">
                              <label for="card" class="method card">
                                <div class="icon-container">
                                  <i class="fa fa-cc-visa" style="color: navy"></i>
                                  <i class="fa fa-cc-amex" style="color: blue"></i>
                                  <i class="fa fa-cc-mastercard" style="color: red"></i>
                                  <i class="fa fa-cc-discover" style="color: orange"></i>
                                </div>
                                <div class="radio-input">
                                  <input type="radio" id="card" />
                                </div>
                              </label>
                            </div>
                              
                            <%--Paypal--%>
                            <div class="col-50 payment">
                              <label for="paypal" class="method paypal">
                                <div class="icon-container">
                                  <i class="fa fa-paypal" style="color: navy"></i>
                                </div>
                                <div class="radio-input">
                                  <input id="paypal" type="radio" checked>
                                  <input type="button" name="paypal" value="Paypal"  onclick="location.href='avatar_check_out.jsp';" />
                                  </div>
                              </label>
                            </div>
                          </div>

                            
                          <div class="payment-row">
                            <div class="col-50">
                              <label for="cname">Cardholder's Name</label>
                              <input type="text" id="cname" name="cardname" placeholder="Firstname Lastname" required />
                            </div>
                            <div class="col-50">
                              <label for="ccnum">Credit card number</label>
                              <input type="text" id="ccnum" name="cardnumber" placeholder="xxxx-xxxx-xxxx-xxxx"
                                required />
                            </div>
                          </div>
                          <div class="payment-row">
                            <div class="col-50">
                              <label for="expmonth">Exp Month</label>
                              <input type="text" id="expmonth" name="expmonth" placeholder="September" required />
                            </div>
                            <div class="col-50">
                              <div class="payment-row">
                                <div class="col-50">
                                  <label for="expyear">Exp Year</label>
                                  <input type="text" id="expyear" name="expyear" placeholder="yyyy" required />
                                </div>
                                <div class="col-50">
                                  <label for="cvv">CVV</label>
                                  <input type="text" id="cvv" name="cvv" placeholder="xxx" required />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <input type="button" name="next-step" class="next-step pay-btn" value="Confirm Payment"  onclick="location.href='index.jsp';" />
              <input type="button" name="previous-step" class="cancel-pay-btn" value="Cancel Payment" onclick="location.href='index.jsp';" />
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
<script>
  let prevId = "1";

  window.onload = function () {
    document.getElementById("screen-next-btn").disabled = true;
  }

  function timeFunction() {
    document.getElementById("screen-next-btn").disabled = false;
  }

  function myFunction(id) {
    document.getElementById(prevId).style.background = "#16130a";
    document.getElementById(id).style.background = "#ffce26";
    prevId = id;
  }
</script>

<script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
<script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
</script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

<script type="text/javascript" src="assets/js/ticket-booking.js"></script>

</html>
