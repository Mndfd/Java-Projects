
 

<%   
	
	String title = "Login page";
	String errorMessage = (String)session.getAttribute("errors"); 
	String login = (String)session.getAttribute("login");
	String password = (String)session.getAttribute("password");
	if(errorMessage == null)
		errorMessage="";
	if(login == null)
		login = "";
	if (password == null)
		password = "";
	
if (null != session.getAttribute("student"))
{
	response.sendRedirect("./dashboard.jsp");
	
}
else
{
%>

<jsp:include page="./header.jsp" /> 

	<center>
	<h2>Please log in</h2>
	<p>Enter your login information below.<br>
	   If you are not a student, please return to the
	   <a href="index.jsp">Durham College</a> home page.</p>
	<p>
	   If you want to become a student on our school, please <a href="register.jsp">register</a>.</p>
<form name="Input" method="post" action="./Login" >
		<!-- action="http://localhost:81/ozkancao/LoginServlet" > -->
		<table border=0 bgcolor="lightgoldenrodyellow" cellpadding=10 >
		<tr><td colspan="2" align="center"><%= errorMessage %></td></tr>
		<tr>
			<td><strong>Login Id</strong></td>
			<td><input type="text" name="Login" value="<%= login %>" size=20></td>
		</tr>
		<tr>
			<td><strong>Password</strong></td>
			<td><input type="password" name="Password" value="" size=20></td>
		</tr>
		</table>
		<table border=0 cellspacing=15 >
		<tr>
			<td><input type="submit" value = "Log In"></td>
			<td><input type="reset" value = "Clear"></td>
		</tr>
		</table>
	</form>
	Please wait after pressing <strong>Log in</strong>
	while we retrieve your records from our database.<br>
	<em>(This may take a few moments)</em>
	</center>
	<%
}
	%>
<jsp:include page="./footer.jsp" />  