<html>
<head>
      <!-- Bootstrap core CSS -->
<link href="assets/dist/css/bootstrap.css" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
<style>
  body
  {
    background-image: url("assets/dist/img/back.jpg");
    color:navy;
  }
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
</style>
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<title>Educate English</title>
<body  class="text-center">
<form class="form-signin" method="POST" action='<%= response.encodeURL("j_security_check") %>' >

    <button class="btn btn-lg btn-secondary btn-block" type="submit">Educate English</button>
  
    <label for="inputName" class="sr-only">user name</label>
    <input type="inputName" id="inputName" name="j_username" class="form-control" placeholder="User Name" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="j_password" class="form-control" placeholder="Password" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
</form>
</body>
</html>
