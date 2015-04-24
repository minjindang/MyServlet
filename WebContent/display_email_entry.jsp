<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Murach's Java Servlets and JSP</title>
</head>
<body>
	<!-- import packages and classes needed by the scripts -->
	<%@ page import="business.*, data.*" %>
	<% 
			// get parameters from the request
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String emailAddress = request.getParameter("emailAddress");
			
			//get the real path for the EmailList.txt file
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/WEB-INF/EmailList.txt");
					
			//user regular Java objects
			User user = new User(firstName, lastName, emailAddress);
			UserIO.add(user, path);
	%>
	<h1>Thanks for joining our email list</h1><br>	
	<p>Here is the information that you entered:</p><br>
	<table cellspacing="5" cellpadding="5" border="1">
		<tr>
			<td align="right">First name:</td>
			<td><%= firstName %></td>
		</tr>
		<tr>
			<td align="right">Last name:</td>
			<td><%= lastName %></td>
		</tr>
		<tr>
			<td align="right">Email address:</td>
			<td><%= emailAddress %></td>
		</tr>
	</table>
	
	<p>To enter another email address, click on the Back <br>
	button in your browser or the Return button shown <br>
	below.</p>
	
	<form action="join_email_list.html"  method="post">
		<input type="submit"  value="Return">
	</form>
</body>
</html>