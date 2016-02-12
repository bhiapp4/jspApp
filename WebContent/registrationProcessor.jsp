<%@page import="org.jnit.domain.Customer"%>
<%@page import="org.jnit.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <jsp:useBean id="customer" class="org.jnit.domain.Customer"/>
   <jsp:setProperty property="*" name="customer"/>
   <jsp:getProperty property="name" name="customer"/>
	<%
		CustomerDao custDao = new CustomerDao();
		//Customer customer = new Customer();
		//customer.setCity(request.getParameter("city"));
		//customer.setName(request.getParameter("name"));
		//customer.setStreet(request.getParameter("street"));
		//customer.setState(request.getParameter("state"));
		//customer.setCountry(request.getParameter("country"));
		//
		customer.setZipCode(request.getParameter("zipCode"));
		int noOfRows = custDao.insertCustomer(customer);
		if (noOfRows == 1){
			out.println(customer.getName() + " saved to database");
		}
	%>
</body>
</html>