<%@page import="java.sql.PreparedStatement"%>
<%@page import="model.User"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Basic Banking System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="sweetalert2.all.min.js"></script>
</head>


<body>
  
    

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Rajlaxmi</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
        <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="index.jsp">Customer List</a></li>
    
          <li><a class="nav-link   scrollto" href="history.jsp">Transaction History</a></li>
        
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.jsp">Home</a></li>
          <li>Send Money</li>
        </ol>
        <h2>Send Money</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="sendmoney">
         

        <div class="row">

             <%Class.forName("com.mysql.cj.jdbc.Driver");
    	System.out.println("Driver Registerd");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","abc123");
    	System.out.println("Connection successfully");
    	String id = request.getParameter("aid");
    	User u=new User();
    	PreparedStatement ps=con.prepareStatement("SELECT * FROM user WHERE uid=?");
    	
		ps.setString(1,id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
	    	u.setUacount(rs.getString(5));
	    	u.setUamount(rs.getString(6));
	   }%>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="sender.jsp"  role="form"  >
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="name">Sender Account Number </label>
                  <input type="text" name="snumber" class="form-control" value="<%=u.getUacount() %>"  required>
                </div>
                <div class="form-group col-md-6">
                  <label for="name">Receiver Account Number  </label>
                  <input type="text" class="form-control" name="rnumber" required>
                </div>
              </div>
          <div class="form-group">
                <label for="name">Amount</label>
                <input type="text" class="form-control" name="amount" id="amount" required>
              </div>
              
              <input type="submit" >
               
            </form>
          </div>
</div>
        </div>

      </div>
    </section><!-- End Contact Section -->


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
           
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Rajlaxmi</h3>
            <p>
             
              Maharashtra<br>
              India<br><br>
              <strong>Phone:</strong> +91 7737 8978 90<br>
              <strong>Email:</strong> rj@example.com<br>
            </p>
          </div>

         <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#table">Customer List</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="transection.jsp">Transaction</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="history.php">View All Transaction</a></li>
            </ul>
          </div>

        
          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      
      <div class="credits">
       
        Designed by <a href="#">Rajlaxmi</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
 

</body>

</html>