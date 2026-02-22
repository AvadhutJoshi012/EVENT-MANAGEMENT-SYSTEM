<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Event_Management_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <%--Review courousel--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
    <link href="CustomerReview/owl.carousel.min.css" rel="stylesheet" />
    <link href="CustomerReview/owl.theme.min.css" rel="stylesheet" />


    <style>
        * {
            font-family: 'Montserrat', sans-serif;
        }

        .bg-light {
            background-color: transparent !important;
        }

        .carousel-item {
            height: 100vh;
            min-height: 300px;
        }

        .carousel-caption {
            bottom: 220px;
        }

            .carousel-caption h5 {
                font-size: 45px;
                text-transform: uppercase;
                letter-spacing: 2px;
                margin-top: 25px;
            }

            .carousel-caption p {
                width: 60%;
                margin: auto;
                font-size: 18px;
                line-height: 1.9;
            }

            .carousel-caption a {
                text-transform: uppercase;
                text-decoration: none;
                background: darkorange;
                padding: 10px 30px;
                display: inline-block;
                color: #000;
                margin-top: 15px;
            }

        /*  .navbar-nav a {
            font-size: 18px;
            text-transform: uppercase;
            font-weight: bold;
        }
        
        .navbar-light .navbar-brand {
            color: #fff;
            font-size: 25px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .navbar-light .navbar-brand:focus, .navbar-light .navbar-brand:hover {
            color: #fff;
        }

        .navbar-light .navbar-nav .nav-link {
            color: #fff;
        }

            .navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
                color: #fff;
            }

        .w-100 {
            height: 100vh;
        }

        .navbar-toggler {
            padding: 1px 5px;
            font-size: 18px;
            line-height: 0.3;
            background: #fff;
        }*/

        @media only screen and (max-width: 767px) {
            .navbar-nav {
                text-align: center;
                background: rgba(0, 0, 0, 0.5);
            }

            .carousel-caption {
                bottom: 165px;
            }

                .carousel-caption h5 {
                    font-size: 17px;
                }

                .carousel-caption a {
                    padding: 10px 15px;
                    font-size: 15px;
                }
        }

        .bgcolor.scrolled {
            background-color: yellow;
        }


        .navbar {
            transition: all 0.5s;
        }

        .navbar-scrolled {
            background-color: #f5ce42;
            box-shadow: 0 3px 10px rgba(0,0,0,0.15);
        }
        



        /*Review Corousel*/

        .demo {
            background: #f8f8f8;
        }

        .testimonial {
            margin: 0 20px 40px;
        }

            .testimonial .testimonial-content {
                padding: 35px 25px 35px 50px;
                margin-bottom: 35px;
                background: #fff;
                border: 1px solid #f0f0f0;
                position: relative;
            }

                .testimonial .testimonial-content:after {
                    content: "";
                    display: inline-block;
                    width: 20px;
                    height: 20px;
                    background: #fff;
                    position: absolute;
                    bottom: -10px;
                    left: 22px;
                    transform: rotate(45deg);
                }

        .testimonial-content .testimonial-icon {
            width: 50px;
            height: 45px;
            background: #ff4242;
            text-align: center;
            font-size: 22px;
            color: #fff;
            line-height: 42px;
            position: absolute;
            top: 37px;
            left: -19px;
        }

            .testimonial-content .testimonial-icon:before {
                content: "";
                border-bottom: 16px solid #e41212;
                border-left: 18px solid transparent;
                position: absolute;
                top: -16px;
                left: 1px;
            }

        .testimonial .description {
            font-size: 15px;
            font-style: italic;
            color: #8a8a8a;
            line-height: 23px;
            margin: 0;
        }

        .testimonial .title {
            display: block;
            font-size: 18px;
            font-weight: 700;
            color: #525252;
            text-transform: capitalize;
            letter-spacing: 1px;
            margin: 0 0 5px 0;
        }

        .testimonial .post {
            display: block;
            font-size: 14px;
            color: #ff4242;
        }

        .owl-theme .owl-controls {
            margin-top: 20px;
        }

            .owl-theme .owl-controls .owl-page span {
                background: #ccc;
                opacity: 1;
                transition: all 0.4s ease 0s;
            }

            .owl-theme .owl-controls .owl-page.active span,
            .owl-theme .owl-controls.clickable .owl-page:hover span {
                background: #ff4242;
            }
    </style>

    <%-- navbar --%>

    <nav class="navbar navbar-expand-lg navbar-light fixed-top container-fluid ">
        <a class="navbar-brand" href="#">
            <img src="Images/logo.png" height="30px" /></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse"></div>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">EXPLORE
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Amarai Multipurpose lawn</a>
                        <a class="dropdown-item" href="#">Annapurna Cafe</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">TOURISM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">GALLERY</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">CONTACT US</a>
                </li>

                <li class="nav-item">
                    <ul class="navbar-nav ms-auto">
                        <a href="#">
                            <button class="btn btn-outline-success my-2 my-sm-0 " type="submit">BOOK ONLINE</button></a>
                    </ul>
                </li>



            </ul>
        </div>
    </nav>

    <%-- Courosel --%>


    <div class="carousel slide" data-bs-ride="carousel" id="carouselExampleIndicators">
        <div class="carousel-indicators">
            <button aria-label="Slide 1" class="active" data-bs-slide-to="0" data-bs-target="#carouselExampleIndicators" type="button"></button>
            <button aria-label="Slide 2" data-bs-slide-to="1" data-bs-target="#carouselExampleIndicators" type="button"></button>
            <button aria-label="Slide 3" data-bs-slide-to="2" data-bs-target="#carouselExampleIndicators" type="button"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img alt="..." class="d-block w-100 img-fluid" src="Images/1.jpg">
                <div class="carousel-caption">
                    <h5 class="animated bounceInRight" style="animation-delay: 1s">Web Design</h5>
                    <p class="animated bounceInLeft d-none d-md-block" style="animation-delay: 2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                    <p class="animated bounceInRight" style="animation-delay: 3s"><a href="#">Learn More</a></p>
                </div>
            </div>
            <div class="carousel-item">
                <img alt="..." class="d-block w-100 img-fluid" src="Images/2.jpg">
                <div class="carousel-caption">
                    <h5 class="animated bounceInRight" style="animation-delay: 1s">Graphics Design</h5>
                    <p class="animated bounceInLeft d-none d-md-block" style="animation-delay: 2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                    <p class="animated bounceInRight" style="animation-delay: 3s"><a href="#">Learn More</a></p>
                </div>
            </div>
            <div class="carousel-item">
                <img alt="..." class="d-block w-100 img-fluid" src="Images/3.jpg">
                <div class="carousel-caption">
                    <h5 class="animated bounceInRight" style="animation-delay: 1s">Photography</h5>
                    <p class="animated bounceInLeft d-none d-md-block" style="animation-delay: 2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                    <p class="animated bounceInRight" style="animation-delay: 3s"><a href="#">Learn More</a></p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></button>
        <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></button>
    </div>


    <%-- Our Awsome Services --%>

    <div class="container-fluid" style="background-color: #e0dede">


        <div class="container pt-5 pb-5">
            <div class="row text-center pt-3 pb-3">
                <h3>OUR AWSOME SERVICES</h3>
                <hr />
            </div>
            <center>
                <div class="row pt-3 pb-3">
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row pt-3 pb-3">
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="..." alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </center>
        </div>
    </div>


    <%-- About Multipurpose Lawn --%>


    <div class="container-fluid pt-5 pb-5" style="background-color: #560405; color: White">
        <div class="row">

            <div class="col-md-4">


                <img src="Images/img.jpg" width="650px" />
                </div>

                <div class="col-md-8">

                    <h3 class="text-center">Amrai Multipurpose Lawn</h3>
                    <br />

                    <p class="text-center">
                        Details about the Lawn
                    </p>
                </div>
            

        </div>


    </div>


    <%-- Customer Reviews --%>

    <div class="container-fluid" style="background-color: #e0dede">
        <div class="container">
            <br />
            <h3 class="text-center">Our Customer Reviews</h3>
            <hr />


            <div class="demo">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="testimonial-slider" class="owl-carousel">
                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum dolor sit amet eros imperdiet, sit amet hendrerit nisi vehicula.
                                        </p>
                                    </div>
                                    <h3 class="title">williamson</h3>
                                    <span class="post">Web Developer</span>
                                </div>

                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum dolor sit amet eros imperdiet, sit amet hendrerit nisi vehicula.
                                        </p>
                                    </div>
                                    <h3 class="title">Kristina</h3>
                                    <span class="post">Web Designer</span>
                                </div>

                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum dolor sit amet eros imperdiet, sit amet hendrerit nisi vehicula.
                                        </p>
                                    </div>
                                    <h3 class="title">williamson</h3>
                                    <span class="post">Web Developer</span>
                                </div>
                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum dolor sit amet eros imperdiet, sit amet hendrerit nisi vehicula.
                                        </p>
                                    </div>
                                    <h3 class="title">Kristina</h3>
                                    <span class="post">Web Designer</span>
                                </div>

                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum dolor sit amet eros imperdiet, sit amet hendrerit nisi vehicula.
                                        </p>
                                    </div>
                                    <h3 class="title">williamson</h3>
                                    <span class="post">Web Developer</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <%-- Location --%>
    <div class="cointainer-fluid pb-5 pt-5" style="background-color: #e0dede;">
        <center>
            <div class="container">
                <h2>Our Location </h2>
                <hr />

                <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d477.3003727285081!2d74.27523065795094!3d16.855948458985228!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1677674907923!5m2!1sen!2sin" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </center>
    </div>






    <%-- JS --%>

    <script>
        const navEl = document.querySelector('.navbar');

        window.addEventListener('scroll', () => {
            if (window.scrollY >= 56) {
                navEl.classList.add('navbar-scrolled');
            }
            else if (window.scrollY < 56) {
                navEl.classList.remove('navbar-scrolled');
            }
        });

        /*Review Corousel*/
        $(document).ready(function () {
            $("#testimonial-slider").owlCarousel({
                items: 3,
                itemsDesktop: [1000, 3],
                itemsDesktopSmall: [980, 2],
                itemsTablet: [768, 2],
                itemsMobile: [650, 1],
                pagination: true,
                navigation: false,
                slideSpeed: 1000,
                autoPlay: true
            });
        });
    </script>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js">
    </script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js">
    </script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js">
    </script>
    <script src="CustomerReview/jquery-1.12.0.min.js"></script>
    <script src="CustomerReview/owl.carousel.min.js"></script>

</asp:Content>
