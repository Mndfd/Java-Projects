<%   

	String title = "Index Page";
	%>


<jsp:include page="./header.jsp" />  

	<center>
	<h1><em><font color="red">Welcome to Durham College</font></em></h1>
	
	<p>Welcome to the Durham College portal.</p>
	<strong>Durham College Portal provides:</strong><br>
	<table align="center" cellspacing="5" cellpadding="3">
	<tr>
		<td><li>
			Seeing your records.
		</li></td>
		<td><li>
			Changing your contact information
		</li></td>
	</tr>
	<tr>
		<td><li>
			Access and get a copy of your documents.
		</li></td>
		<td><li>
			Pay your fees, and registering for your courses.
		</li></td>
	</tr>
	</table>
	<center><br>If you are a Durham College Student, please log in.
	<table align="center" bgcolor="lightgoldenrodyellow">
	<tr>
		<td width="100" align="Center">
			<a href="login.jsp">
			<strong><font size="+1">Log In</font></strong></a>
		</td>
	</tr>
	</table>

  <jsp:include page="./footer.jsp" />  
