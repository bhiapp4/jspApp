<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource 
	var="customerDatasource" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/javaTraining"
    user="root"  password=""/>
 
 <sql:query var="result" dataSource="${customerDatasource}" >
        select * from customer
</sql:query>
	<h2>All Customers</h2>
	<table border="1">

		<%-- Output column names on a header row --%>
		<tr>
			<c:forEach var="columnName" items="${result.columnNames}">
				<th><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>

		<%-- Output each row of data --%>
		<c:forEach var="row" items="${result.rowsByIndex}">
			<tr>
				<%-- Output each column of data --%>
				<c:forEach var="col" items="${row}">
					<td><c:out value="${col}" /></td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>