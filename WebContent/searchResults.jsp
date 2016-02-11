<%@page import="org.jnit.domain.Customer"%>
<%@page import="java.util.List"%>
<%@page import="org.jnit.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				Name
			</td>
			<td>
				City
			</td>			
		</tr>
	<% 
		CustomerDao custDao = new CustomerDao();
		List<Customer>customers = custDao.fetchCustomersByCity(request.getParameter("city"));
		for (Customer cust : customers){
	%>
	<tr>
		<td><%=cust.getName() %></td>
		<td><%=cust.getCity() %></td>
	</tr>
	<% 
		}
	%>
</table>

</body>
</html>