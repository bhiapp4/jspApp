<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<h2> Registration Page</h2>
	<fieldset style="width:300px;">
		<legend>Registration</legend>
		<form action="register" method="POST">
			<table>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" name="city"/></td>
				</tr>
				<tr>
					<td>Street</td>
					<td><input type="text" name="street"/></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" name="state"/></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>
						<select name="country">
							<option label="United States" value="US"/>
							<option label="United Kingdom" value="UK"/>						
						</select>
					</td>
				</tr>
				<tr>
					<td>Zip</td>
					<td><input type="text" name="zipCode"/></td>
				</tr>
			</table>
			<input type="submit" value="Register"/>
		</form>
	</fieldset>

</body>
</html>