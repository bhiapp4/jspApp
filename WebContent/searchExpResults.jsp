<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- ${requestScope.custList}--%>
	<table>
		<tr>
			<td>
				Name
			</td>
			<td>
				City
			</td>			
		</tr>
		<c:forEach items="${custList}" var="customer">
		<tr>
			<td>
			    <c:if test="${customer.name eq 'Tom'}">
					<c:out value="${customer.name}"/>
				</c:if>
			</td>
			<td><c:out value="${customer.city}"/></td>
		</tr>			
		</c:forEach>
	</table>	
	
</body>
</html>