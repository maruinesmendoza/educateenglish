<%@ page import="java.util.Enumeration" %>
<%
  if (request.getParameter("logoff") != null) {
    session.invalidate();
    response.sendRedirect("index.jsp");
    return;
  }
%>
<html>
<head>
<title>Protected Page for Examples</title>
    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.css" rel="stylesheet">

    <style>
      body
      {
 background-image: url("../assets/dist/img/back.jpg");
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
<body bgcolor="white">
<link href="../assets/dist/css/bootstrap.css" rel="stylesheet">

You are logged in as remote user
<b><%= util.HTMLFilter.filter(request.getRemoteUser()) %></b>
in session <b><%= session.getId() %></b><br><br>

<%
  if (request.getUserPrincipal() != null) {
%>
    Your user principal name is
    <b><%= util.HTMLFilter.filter(request.getUserPrincipal().getName()) %></b>
    <br><br>
<%
  } else {
%>
    No user principal could be identified.<br><br>
<%
  }
%>

<%
  String role = request.getParameter("role");
  if (role == null)
    role = "";
  if (role.length() > 0) {
    if (request.isUserInRole(role)) {
%>
      You have been granted role
      <b><%= util.HTMLFilter.filter(role) %></b><br><br>
<%
    } else {
%>
      You have <i>not</i> been granted role
      <b><%= util.HTMLFilter.filter(role) %></b><br><br>
<%
    }
  }
%>

To check whether your user name has been granted a particular role,
enter it here:
<form method="GET" action='<%= response.encodeURL("index.jsp") %>'>
<input type="text" name="role" value="<%= util.HTMLFilter.filter(role) %>">
<input type="submit" >
</form>
<br><br>

To add some data to the authenticated session, enter it here:
<form method="GET" action='<%= response.encodeURL("index.jsp") %>'>
<input type="text" name="dataName">
<input type="text" name="dataValue">
<input type="submit" >
</form>
<br><br>

<%
  String dataName = request.getParameter("dataName");
  if (dataName != null) {
    session.setAttribute(dataName, request.getParameter("dataValue"));
  }
%>
<p>The authenticated session contains the following attributes:</p>
<table>
<tr><th>Name</th><th>Value</th></tr>
<%
  Enumeration<String> names = session.getAttributeNames();
  while (names.hasMoreElements()) {
    String name = names.nextElement();
%>
<tr><td><%= name %></td><td><%= session.getAttribute(name) %></td>
<%
  }
%>
</table>
<br><br>

If you have configured this application for form-based authentication, you can
log off by clicking
<a href='<%= response.encodeURL("index.jsp?logoff=true") %>'>here</a>.
This should cause you to be returned to the login page after the redirect
that is performed.

</body>
</html>
