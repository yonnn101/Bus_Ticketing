<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Busify</title>
  <link href="assets/img/fav.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Remember - v4.10.0
  * Template URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel = "stylesheet" href = "all_components/style.css">
    <style>
        body{
    background-image:url(assets/img/bus.png.png) ;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
    overflow: auto;
}
    </style>
    
</head>
<body>
    <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="home.jsp">Busify</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="home.jsp">Home</a></li>
          <li><a class="nav-link scrollto " href="ticketReport.jsp">Book Ticket Report</a></li>
          
          <%	String fname = (String) session.getAttribute("fname"); %>
          <li><a class="nav-link scrollto active" href="#"> <%=fname %></a></li>
         
          <li><a class="nav-link scrollto" href="logout">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    
      </div>
      <div class="text-center">
  <a class="btn btn-primary" href="TravelDet.jsp">Book Now</a>
</div>
  </header><!-- End Header -->
  
  <!-- Register Form -->
  
   <div class = "container-fluid mt-4">
	       <div class = "row p-5">
	           <div class = "col-md-4 offset-md-4">
	                <div class = "card">
	                    <div class = "card-body">
	                         <div class = "text-center text-info mb-4">
	                         <i class="fa-solid fa-user-plus fa-2x" aria-hidden = "true"></i>
	                        <c:if test="${not empty ntf }">
		                        <div class="alert alert-success" role="alert">${ ntf}</div>
		                        <c:remove var="ntf"/>
	                           </c:if>
	                           <h2 style="color: #8fc04e"><b>Welcome to Bus Ticket System</b></h2>
	                         </div>
</body>
</html>