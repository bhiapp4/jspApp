<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="custom" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <span>This is a text from first jsp file</span>
 <!--<jsp:include page="second.jsp"/>--> <!--  the content is included at run time(dynamic content) -->
 <%@include file="header.jsp" %><!-- content is included at translation time(static content) -->
 <!-- jsp:useBean, jsp:setpropery,jsp:getproperty -->
 <%--  
 <jsp:forward page="second.jsp">
 	<jsp:param value="testVal" name="test"/>
 </jsp:forward>
 --%>
 <custom:substring endIndx="2" input="Hello" startIndx="0"/>
 <custom:decimalformatter input="12506.2569" pattern="#,##0.00"/>
</body>
</html>