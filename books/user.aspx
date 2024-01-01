<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="books.user" %>

<!DOCTYPE html>
<html>

<head>
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

    <style type="text/css">
        .auto-style1 {
            margin-bottom: 4;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              Alayous
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
                      For All Your <br>
                      Reading Needs
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
                      For All Your <br>
                      Reading Needs
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
                      For All Your <br>
                      Reading Needs
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



  <!-- client section -->

  <section class="client_section layout_padding">
    <div class="container ">
      <div class="heading_container heading_center">
        <h2>
            Books Page</h2>
        <hr>
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="go to my page" Width="192px" />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="auther" HeaderText="auther" SortExpression="auther" />
                  <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                  <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                  <asp:ImageField DataImageUrlField="image" HeaderText="image" ControlStyle-Width="100" ControlStyle-Height="100">
                  </asp:ImageField>
              </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
              <RowStyle BackColor="White" ForeColor="#330099" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
              <SortedAscendingCellStyle BackColor="#FEFCEB" />
              <SortedAscendingHeaderStyle BackColor="#AF0101" />
              <SortedDescendingCellStyle BackColor="#F6F0C0" />
              <SortedDescendingHeaderStyle BackColor="#7E0000" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [books] WHERE [Id] = @Id" InsertCommand="INSERT INTO [books] ([name], [auther], [desc], [price], [type], [image]) VALUES (@name, @auther, @desc, @price, @type, @image)" SelectCommand="SELECT * FROM [books]" UpdateCommand="UPDATE [books] SET [name] = @name, [auther] = @auther, [desc] = @desc, [price] = @price, [type] = @type, [image] = @image WHERE [Id] = @Id">
              <DeleteParameters>
                  <asp:Parameter Name="Id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="auther" Type="String" />
                  <asp:Parameter Name="desc" Type="String" />
                  <asp:Parameter Name="price" Type="Int32" />
                  <asp:Parameter Name="type" Type="String" />
                  <asp:Parameter Name="image" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="auther" Type="String" />
                  <asp:Parameter Name="desc" Type="String" />
                  <asp:Parameter Name="price" Type="Int32" />
                  <asp:Parameter Name="type" Type="String" />
                  <asp:Parameter Name="image" Type="String" />
                  <asp:Parameter Name="Id" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
              <EditItemTemplate>
                  Id:
                  <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                  <br />
                  name:
                  <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                  <br />
                  auther:
                  <asp:TextBox ID="autherTextBox" runat="server" Text='<%# Bind("auther") %>' />
                  <br />
                  desc:
                  <asp:TextBox ID="descTextBox" runat="server" Text='<%# Bind("desc") %>' />
                  <br />
                  price:
                  <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                  <br />
                  type:
                  <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                  <br />
                  image:
                  <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                  <br />
                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </EditItemTemplate>
              <InsertItemTemplate>
                  name:
                  <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                  <br />
                  auther:
                  <asp:TextBox ID="autherTextBox" runat="server" Text='<%# Bind("auther") %>' />
                  <br />
                  desc:
                  <asp:TextBox ID="descTextBox" runat="server" Text='<%# Bind("desc") %>' />
                  <br />
                  price:
                  <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                  <br />
                  type:
                  <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                  <br />
                  image:
                  <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                  <br />
                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </InsertItemTemplate>
              <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="124px" ImageUrl='<%# Eval("image") %>' Width="147px" />
                  <br />
                  Id:
                  <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                  <br />
                  name:
                  <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                  <br />
                  auther:
                  <asp:Label ID="autherLabel" runat="server" Text='<%# Bind("auther") %>' />
                  <br />
                  desc:
                  <asp:Label ID="descLabel" runat="server" Text='<%# Bind("desc") %>' />
                  <br />
                  price:
                  <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                  <br />
                  type:
                  <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                  <br />
                  image:
                  <asp:Label ID="imageLabel" runat="server" Text='<%# Bind("image") %>' />
                  <br />

                  <br />
                  <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Button" />
              </ItemTemplate>
          </asp:FormView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
          <br />
      </div>
    </div>
  </section>

  <!-- end client section -->



  <!-- info section -->

  <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_detail">
            <h4>
              About Us
            </h4>
            <p>
              Vitae aut explicabo fugit facere alias distinctio, exem commodi mollitia minusem dignissimos atque asperiores incidunt vel voluptate iste
            </p>
            <div class="info_social">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_contact">
            <h4>
              Address
            </h4>
            <div class="contact_link_box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call +01 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  demo@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_contact">
            <h4>
              Newsletter
            </h4>
              <input type="text" placeholder="Enter email" />
              <button type="submit">
                Subscribe
              </button>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="map_container">
            <div class="map">
              <div id="googleMap"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
      </p>
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

    </form>

</body>

</html>