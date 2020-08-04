<%@ page import="java.util.Enumeration" %>
<%
  if (request.getParameter("logoff") != null) {
    session.invalidate();
    response.sendRedirect("index.jsp");
    return;
  }
%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Carousel Template · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <!-- Bootstrap core CSS -->
<link href="assets/dist/css/bootstrap.css" rel="stylesheet">

    <style>
      body
      {
        background-color: gray;
      }
      
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
     .img-size
     {
      width: 500px;
      height: 300px;
     }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">Educate English</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Salir</a>
        </li>

      </ul>
    </div>
  </nav>
</header>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="text-center">
          <img src="assets/dist/img/pic/1.jpg" alt="..." class="img-thumbnail img-size">
          <button class="btn btn-lg btn-primary btn-block" type="submit">Dog</button>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Table</button>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Chair</button>
        </div>
      </div>
      <div class="carousel-item">
         <div class="text-center">
          <img src="assets/dist/img/pic/2.jpg" alt="..." class="img-thumbnail img-size">
          <button class="btn btn-lg btn-primary btn-block" type="submit">Dog</button>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Table</button>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Chair</button>
        </div>
      </div>
      <div class="carousel-item">
     
          <div class="text-center">
            <img src="assets/dist/img/pic/3.jpg" alt="..." class="img-thumbnail img-size">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Cell Phone</button>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Table</button>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Chair</button>
          </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2020 Educate English, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="assets/dist/js/bootstrap.bundle.js"></script></body>
</html>
