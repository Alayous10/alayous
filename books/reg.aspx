<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="books.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="images/R.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Alayous</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
               Alayous Bookstore                                    
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <from class="search_form">
              <input type="text" class="form-control" placeholder="Search here...">
              <button class="" type="submit">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
            </from>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h5>
                      Alayous Bookstore
                    </h5>
                    <h1>
                      In order to increase your culture
                    </h1>
                    <p>
                      It is very important for a person to read to learn. Here you will find everything you want
                    </p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/s1.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h5>
                      Alayous Bookstore
                    </h5>
                    <h1>
                     In order to increase your culture
                    </h1>
                    <p>
                      It is very important for a person to read to learn. Here you will find everything you want
                    </p>
                    <a href="">
                      Read More
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/s2.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h5>
                      Alayous Bookstore
                    </h5>
                    <h1>
                     In order to increase your culture
                    </h1>
                    <p>
                      It is very important for a person to read to learn. Here you will find everything you want
                    </p>
                    <a href="">
                      Read More
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/s3.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn_box">
          <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

    <section class="contact_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 ">
          <div class="heading_container ">
            <h2 class="">
              Create An Account
            </h2>
          </div>
          <form id="form1" runat="server">
            <div>
                
              <asp:TextBox  ID="f_name" placeholder="First Name" runat="server"/>
                <asp:Label ID="f_namelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
            </div>
               <div>
                
              <asp:TextBox  ID="l_name" placeholder="Last Name" runat="server"/>
                    <asp:Label ID="l_namelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
           
            </div>
               <div>
                
              <asp:TextBox TextMode="Email"  ID="email" placeholder="Email" runat="server"/>
                    <asp:Label ID="emaillbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
           
            </div>
               <div>
                
              <asp:TextBox  ID="username" placeholder="User Name" runat="server"/>
                    <asp:Label ID="usernamelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
           
            </div>
               <div>
                
              <asp:TextBox  ID="password" TextMode="Password" placeholder="Password" runat="server"/>
                    <asp:Label ID="passwordlbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
           
            </div>
               <div>
                
              <asp:TextBox  ID="rpassword" TextMode="Password" placeholder="Repeat password" runat="server"/>
            </div>
            
            <div >
                <asp:Button ID="btn1" runat="server" Text="Sign up" OnClick="btn1_Click" BackColor="#0066CC" Font-Bold="True" ForeColor="White" />
            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            
            <img id="img1" src="images/cont2.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  <!-- info section -->

  <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Alayous technology</a></p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>
</html>
