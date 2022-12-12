


<%   

	String title = "Login page";
	%>

<jsp:include page="./header.jsp" />  
<%@ page import = "webd4201.ozkancao.*" %>
<% Student aStudent = (Student)session.getAttribute("student"); %>
<%
if (null == session.getAttribute("student"))
{
	response.sendRedirect("./login.jsp");
	 session.setAttribute("errors","You cannot access the dashboard without logging in!");
	
}
else
{
%>

<body>
	<center><hr>
	<img src = "images/smallimage1.gif">
	<img src = "images/smallimage2.gif">
	<img src = "images/smallimage3.gif">
	<img src = "images/smallimage4.gif">
	<img src = "images/smallimage5.gif">
	<img src = "images/smallimage6.gif">
	<img src = "images/smallimage7.gif">
	<img src = "images/smallimage8.gif">
	<img src = "images/smallimage9.gif">
	<img src = "images/smallimage10.gif">
	</hr>
	<h2>Student Dashboard</h2>
	
		<table border="0" bgcolor="#FAFADD" cellpadding="5">
		<tr>
			<td><strong>Welcome back <%= aStudent.getFirstName() %></</strong></td>
			
		</tr>
		<tr>
			<td><strong>Student ID: <%= aStudent.getId() %></strong></td>
			
		</tr>
		</table>
	</center>
</body>

<%
}
%>
  <jsp:include page="./footer.jsp" />  
