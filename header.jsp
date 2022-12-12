<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<%   

	String title = "";
	%>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />       

        <title><%= title %></title>

        <link href="./css/app.css" rel="stylesheet" type= "text/css"/>


<%@ page import = "webd4201.ozkancao.*" %>

</head>
<body>
<nav class="nav" >
    <div >
      <a class="navbar-brand"  id="navbar" href="index.jsp"><i class="fas fa-spider"></i><img src = "./images/logo.png"   width="200" 
     height="100"></a>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-menu">
            <a class="nav-link"  href="index.jsp"><i class="fas fa-home"></i> Home</a>
          </li>
			<%
			if (null == session.getAttribute("student"))
			{
			%>
				<li class="nav-item">
				<a class="nav-link" href="login.jsp"><i class="fas fa-project-diagram"></i>Login</a>
				</li>
				<li class="nav-item">
				<a class="nav-link" href="register.jsp"><i class="fas fa-map-signs"></i>Register</a>
				</li>
			<%
			}
			else
			{
			%>
				<li class="nav-item">
				<a class="nav-link" href="./Logout"><i class="fas fa-project-diagram"></i>Logout</a>
				</li>
				<li class="nav-item">
				<a class="nav-link" href="update.jsp"><i class="fas fa-map-signs"></i>Update</a>
				</li>
			<%
			}
			%>
          
			<%
			if (null != session.getAttribute("student"))
			{
			%>
			    <li class="nav-item">
				<a class="nav-link" href="dashboard.jsp"><i class="fas fa-info"></i> Dashboard</a>
				</li>
			<%
			}
			
			%>
			
          
        </ul>
      </div>
    </div>
  </nav>
<%@ page import = "java.util.*" %>


<!-- end of header.jsp -->