﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication_Creater_Bhuvana.WebForm3" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <title>Event Management System Created By Bhuvaneswari</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet" />

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet" />
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />

    <!-- =======================================================
    Theme Name: Reveal
    Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
    <script type="text/javascript">  
        (function () {

            'use strict';
            window.addEventListener('load', function () {
                var form = document.getElementById('Frmevt');
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() == false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');

                }, false);
            }, false);






        }




        )();



    </script>
</head>

<body id="body">
    <form runat="server" id="Frmevt" novalidate="novalidate">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <asp:HiddenField runat="server" ID="hdncustID" />



        <!--==========================
    Top Bar
  ============================-->
        <section id="topbar" class="d-none d-lg-block">
            <div class="container clearfix">
                <div class="contact-info float-left">
                    <i class="fa fa-envelope-o"></i><a href="mailto:bhuram@yahoo.com">bhuram@yahoo.com</a>
                    <i class="fa fa-phone"></i>+971 55 6197843
                </div>
                <div class="social-links float-right">
                    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                    <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                </div>
            </div>
        </section>
        <asp:HiddenField ID="hdnSuccess" runat="server" />
        <!--==========================
    Header
  ============================-->
        <header id="header" class="sticky-wrapper" style="height: 100px;">

            <div class="container">

                <div id="logo" class="pull-left">
                    <h1><a href="#body" class="scrollto">Dubai <span>Software Solutions</span></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="#body">Home</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#services">Services</a></li>
                        <%--<li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li>
          <li class="menu-has-children"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>--%>
                        <li><a href="#contact">Contact</a></li>
                         <li><a href="WebForm1.aspx">Sign Up</a></li>
                    </ul>
                </nav>
                <!-- #nav-menu-container -->
            </div>
        </header>
        <!-- #header -->

        <!--==========================
    Intro Section
  ============================-->
        <section id="intro">

            <div class="intro-content">
                <h2>Making <span>your innovative Events</span><br>
                    happen!</h2>
                <div>
                    <a href="#about" class="btn-get-started scrollto" data-toggle="modal" data-target="#myModal">Get Started</a>
                    <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>



                    <a href="#portfolio" class="btn-projects scrollto">Our Projects</a>
                   <%-- <div runat="server" id="DivSignup" style="display: block">
                        <button type="button" class="btn-get-started" data-toggle="modal" data-target="#myModal">Sign Up</button>
                    </div>--%>
                     <div runat="server" id="DivLogin" style="display: block">
                        <button type="button" class="btn-get-started" data-toggle="modal" data-target="#myModal1">Login</button>
                    </div>

                </div>
                <div runat="server" id="Divsuc" style="display: block">
                    <h5>Hi You have successfully Login!!! Please proceed with Booking !!!</h5>
                </div>
           
                <div runat="server" id="Divfil" style="display: block">
                    <h5>Hi Login attempt failed!!! Please proceed with Login !!!</h5>
                </div>
                 <div runat="server" id="Divfil1" style="display: block">
                    <h5>Hi You have entered wrong email or password !!!</h5>
                </div>
            </div>

            <div id="intro-carousel" class="owl-carousel">
                <div class="item" style="background-image: url('img/intro-carousel/1.jpg');"></div>
                <div class="item" style="background-image: url('img/intro-carousel/2.jpg');"></div>
                <div class="item" style="background-image: url('img/intro-carousel/3.jpg');"></div>
                <div class="item" style="background-image: url('img/intro-carousel/4.jpg');"></div>
                <div class="item" style="background-image: url('img/intro-carousel/5.jpg');"></div>
            </div>

        </section>
        <!-- #intro -->

          <div class="modal fade" id="myModal1" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                   <%-- <div class="modal-header">
                        <h4 class="card-title text-uppercase">Sign Up</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>--%>
                    <div class="modal-body">
                        <%--            
           
            <div class="form-row">
              <div class="form-group col-md-4">
                <input type="text" name="asd" runat="server" maxlength="50"  class="form-control" id="asd" placeholder="First Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-4">
                <input type="text" name="mname" runat="server" maxlength="50"  class="form-control" id="mname" placeholder="Middle Name"  />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-4">
                <input type="text" name="lname" runat="server" maxlength="50" class="form-control" id="lname" placeholder="Last Name"  />
                <div class="validation"></div>
              </div>

              
            </div>
            <div class="form-row">
            <div class="form-group col-md-6">
             <%-- <input type="email" class="form-control" maxlength="50"  runat="server" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
                 <input type="email" class="form-control" id="email" placeholder="email address" aria-describedby="inputGroupPrepend" required="required"/>  
                                        <div class="invalid-feedback">  
                                            Please provide a valid email.  
                                        </div>  
              </div>
              <div class="form-group col-md-6">
                <input type="text" runat="server" maxlength="10" class="form-control" name="password" id="password" placeholder="Password" data-rule="minlen:4" data-msg="Please enter a Password" />
                <div class="validation"></div>
              </div>

            </div>
            <div class="form-group">
              <input type="text" class="form-control" runat="server" name="CompanyName" id="CompanyName" placeholder="Comapany Name" maxlength="50" data-rule="minlen:10" data-msg="Please enter at least 10 chars " />
              <div class="validation"></div>
            </div>
            <div class="form-group">
               <input type="text" class="form-control" runat="server" name="Telephone" id="telephone" placeholder="Telephone" maxlength="15" data-rule="minlen:10" data-msg="Please enter at least 10 chars" />
              <div class="validation"></div>
            </div>
             <div class="form-group">
               <input type="text" class="form-control" runat="server" name="Mobile" id="mobile" placeholder="Mobile" maxlength="15" data-rule="minlen:10" data-msg="Please enter at least 10 chars" />
              <div class="validation"></div>
            </div>
            <div class="text-center" ><button type="button" id="Submit" class="btn btn-default"  onclick="return SubmitCustomer();">Submit</button></div>--%>
                        <%--  <div class="container py-5">--%>
                        <%--  <div class="row">--%>
                        <%-- <div class="offset-md-2 col-md-8 offset-md-2"> --%>
                         <div class="card">
                                        <div class="card-header bg-primary text-white">
                                            <h4 class="card-title text-uppercase">Login</h4>
                                        </div>
                        <div class="card-body">

                       
                        <div class="form-row">
                            
                            <div class="col-xl-12">
                                <div class="form-group">
                                    <label for="email1">Email</label>
                                    <input type="email" runat="server" class="form-control" id="email1" placeholder="email address" aria-describedby="inputGroupPrepend" required="required" />
                                    <div class="invalid-feedback">
                                        Please provide a valid email.  
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">

                            <div class="col-xl-12">
                                <div class="form-group">
                                    <label for="Password1">Password</label>
                                    <input type="password" maxlength="10" class="form-control" id="Password1" runat="server" placeholder="Password" aria-describedby="inputGroupPrepend" />
                                    <div class="invalid-feedback">
                                        Please enter password.  
                                    </div>
                                </div>

                            </div>
                        </div>
                       

                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-xs-12">
                                <div class="float-right">
                                    
                                    <%--<button class="btn btn-primary rounded-0" type="submit" runat="server" onclick="return SubmitCustomer();">Register</button>--%>
                                    
                                     <asp:Button ID="submit" runat="server" class="btn btn-primary rounded-0" OnClick="submit_Click" Text="Login" />
                                </div>
                            </div>
                        </div>

                         </div>
                         </div>
                     
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>



        <main id="main">

            <!--==========================
      About Section
    ============================-->
            <section id="about" class="wow fadeInUp">
                <div class="container">
                    <div class="row">
                        <%--<div class="col-lg-6 about-img">
           <%-- <img src="img/about-img.jpg" alt="">
          </div>--%>

                        <div class="col-lg-12 content">
                            <h2>Host your Innovative Corporate Events With Us!!!</h2>
                            <h3>Dubai Software Solutions has evolved into an Event Management company. We bring an Excellent Event management approach to all our services in order to provide consistency, accuracy, and scalability.</h3>

                            <ul>
                                <li><i class="ion-android-checkmark-circle"></i>Find our Latest Hosted Events </li>
                                <li><i class="ion-android-checkmark-circle"></i>Register and Book your event with us any time </li>
                                <li><i class="ion-android-checkmark-circle"></i>Publish your Event Advertisement Poster on our portal </li>
                                <li><i class="ion-android-checkmark-circle"></i>Make your Pament By online </li>
                                <li><i class="ion-android-checkmark-circle"></i>Host your Innovative Events with us </li>
                                <li><i class="ion-android-checkmark-circle"></i>Brandable landing pages make you stand out from the crowd </li>
                            </ul>

                        </div>
                    </div>

                </div>
            </section>
            <!-- #about -->

            <!--==========================
      Services Section
    ============================-->
            <section id="services">
                <div class="container">
                    <div class="section-header">
                        <h2>Services</h2>
                        <p>Turnkey Solution for your event registration and rsvp !!!</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="box wow fadeInLeft">
                                <div class="icon"><i class="fa fa-bar-chart"></i></div>
                                <h4 class="title"><a href="">Corporate Events</a></h4>
                                <p class="description">We have arranged to Host corporate google developers,Dubai Crypto Millionairs Club,Blockchain Workshop,Big Data and Artificial Intellegence</p>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="box wow fadeInRight">
                                <div class="icon"><i class="fa fa-picture-o"></i></div>
                                <h4 class="title"><a href="">Branded Product Launch</a></h4>
                                <p class="description">We have arranged to host Branded product like iOS 12 | Apple‎</p>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="box wow fadeInLeft" data-wow-delay="0.2s">
                                <div class="icon"><i class="fa fa-shopping-bag"></i></div>
                                <h4 class="title"><a href="">Launching Shopping Portal</a></h4>
                                <p class="description">We have arranged to launch Amazon Shopping Portal</p>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="box wow fadeInRight" data-wow-delay="0.2s">
                                <div class="icon"><i class="fa fa-map"></i></div>
                                <h4 class="title"><a href="">Innovative Evenings</a></h4>
                                <p class="description">We have arranged Vegan Lifestyle Event</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- #services -->

            <!--==========================
      Clients Section
    ============================-->
            <section id="clients" class="wow fadeInUp">
                <div class="container">
                    <div class="section-header">
                        <h2>Clients</h2>
                        <p>Meet our clients and get idea about our services !!!</p>
                    </div>

                    <div class="owl-carousel clients-carousel">
                        <img src="img/clients/client-1.png" alt="" />
                        <img src="img/clients/client-2.png" alt="" />
                        <img src="img/clients/client-3.png" alt="" />
                        <img src="img/clients/client-4.png" alt="" />
                        <img src="img/clients/client-5.png" alt="" />
                        <img src="img/clients/client-6.png" alt="" />
                        <img src="img/clients/client-7.png" alt="" />
                        <img src="img/clients/client-8.png" alt="" />
                    </div>

                </div>
            </section>
            <!-- #clients -->

            <%--    <!--==========================
      Our Portfolio Section
    ============================-->
    <section id="portfolio" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Our Portfolio</h2>
          <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row no-gutters">

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/1.jpg" class="portfolio-popup">
                <img src="img/portfolio/1.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 1</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/2.jpg" class="portfolio-popup">
                <img src="img/portfolio/2.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 2</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/3.jpg" class="portfolio-popup">
                <img src="img/portfolio/3.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 3</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/4.jpg" class="portfolio-popup">
                <img src="img/portfolio/4.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 4</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/5.jpg" class="portfolio-popup">
                <img src="img/portfolio/5.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 5</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/6.jpg" class="portfolio-popup">
                <img src="img/portfolio/6.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 6</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/7.jpg" class="portfolio-popup">
                <img src="img/portfolio/7.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 7</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/portfolio/8.jpg" class="portfolio-popup">
                <img src="img/portfolio/8.jpg" alt="">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp">Portfolio Item 8</h2></div>
                </div>
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->

    <!--==========================
      Testimonials Section
    ============================-->
    <section id="testimonials" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Testimonials</h2>
          <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p>
        </div>
        <div class="owl-carousel testimonials-carousel">

            <div class="testimonial-item">
              <p>
                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
              </p>
              <img src="img/testimonial-1.jpg" class="testimonial-img" alt="">
              <h3>Saul Goodman</h3>
              <h4>Ceo &amp; Founder</h4>
            </div>

            <div class="testimonial-item">
              <p>
                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
              </p>
              <img src="img/testimonial-2.jpg" class="testimonial-img" alt="">
              <h3>Sara Wilsson</h3>
              <h4>Designer</h4>
            </div>

            <div class="testimonial-item">
              <p>
                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
              </p>
              <img src="img/testimonial-3.jpg" class="testimonial-img" alt="">
              <h3>Jena Karlis</h3>
              <h4>Store Owner</h4>
            </div>

            <div class="testimonial-item">
              <p>
                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
              </p>
              <img src="img/testimonial-4.jpg" class="testimonial-img" alt="">
              <h3>Matt Brandon</h3>
              <h4>Freelancer</h4>
            </div>

            <div class="testimonial-item">
              <p>
                <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
              </p>
              <img src="img/testimonial-5.jpg" class="testimonial-img" alt="">
              <h3>John Larson</h3>
              <h4>Entrepreneur</h4>
            </div>

        </div>

      </div>
    </section><!-- #testimonials -->--%>

            <!--==========================
      Call To Action Section
    ============================-->
            <section id="call-to-action" class="wow fadeInUp">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 text-center text-lg-left">
                            <h3 class="cta-title">Call To Action</h3>
                            <p class="cta-text">
                                For Immediate appointment schedules, Please call to +971 55619 7843 
                            </p>
                        </div>
                        <div class="col-lg-3 cta-btn-container text-center">
                            <a class="cta-btn align-middle" href="#">Call To Action</a>
                        </div>
                    </div>

                </div>
            </section>
            <!-- #call-to-action -->

            <%--    <!--==========================
      Our Team Section
    ============================-->
    <section id="team" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Our Team</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/team-1.jpg" alt=""></div>
              <div class="details">
                <h4>Walter White</h4>
                <span>Chief Executive Officer</span>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/team-2.jpg" alt=""></div>
              <div class="details">
                <h4>Sarah Jhinson</h4>
                <span>Product Manager</span>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/team-3.jpg" alt=""></div>
              <div class="details">
                <h4>William Anderson</h4>
                <span>CTO</span>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/team-4.jpg" alt=""></div>
              <div class="details">
                <h4>Amanda Jepson</h4>
                <span>Accountant</span>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #team -->--%>

            <!--==========================
      Contact Section
    ============================-->
            <section id="contact" class="wow fadeInUp">
                <div class="container">
                    <div class="section-header">
                        <h2>Contact Us</h2>
                        <p>Dubai Branch</p>
                    </div>

                    <div class="row contact-info">

                        <div class="col-md-4">
                            <div class="contact-address">
                                <i class="ion-ios-location-outline"></i>
                                <h3>Address</h3>
                                <address>#1905, XL Towers, Al Abraj Street,Dubai, UAE</address>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-phone">
                                <i class="ion-ios-telephone-outline"></i>
                                <h3>Phone Number</h3>
                                <p><a href="tel:+971556197843">+971 55 619 7843</a></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-email">
                                <i class="ion-ios-email-outline"></i>
                                <h3>Email</h3>
                                <p><a href="mailto:bhuram@yahoo.com">bhuram@yahoo.com</a></p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="container mb-4">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22864.11283411948!2d-73.96468908098944!3d40.630720240038435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbg!4v1540447494452" width="100%" height="380" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>

                <%--      <div class="container">
        <div class="form">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" class="contactForm">
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
          </form>
        </div>

      </div>--%>
            </section>
            <!-- #contact -->

        </main>

        <!--==========================
    Footer
  ============================-->
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>Reveal</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Reveal
        -->
                    Designed by Bhuvana
                </div>
            </div>
        </footer>
        <!-- #footer -->




        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/superfish/hoverIntent.js"></script>
        <script src="lib/superfish/superfish.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/magnific-popup/magnific-popup.min.js"></script>
        <script src="lib/sticky/sticky.js"></script>

        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <!-- Template Main Javascript File -->
        <script src="js/main.js"></script>

        <%--   </ContentTemplate></asp:UpdatePanel>--%>
        <script type="text/javascript">
            function SubmitCustomer() {
                //var semail;
                //$('#email').val(function (i, val) {
                //    alert(val.toUpperCase());
                //    semail = val;
                //});
                //alert(semail);

                WebForm_DoPostBackWithOptions()

            }


        </script>

    </form>


    <%--<script type="text/javascript">  
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                var form = document.getElementById('Frmevt');
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                  
                }, false);
            }, false);

                    var semail="";
            $('#email').val(function (i, val) {
                alert(val.toUpperCase());
                semail = val;
            });
            if (semail != "") {
                alert("You have registered successfully!!!");
            }
            

        }
        
        
        
 
        )();
        


    </script>--%>
</body>
</html>