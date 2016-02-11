<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" buffer="8kb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   Hello JSP
   <!--  Directives(page, include(include static resources(the content gets included in the jsp translation time)) and taglib(external tags(JSTL) or custom tags)) -->
   
   <!--  scripting elements -->
   <!-- scriplet -->	
   <%
	String x = "hello";
    Date currentDate = new Date();
    out.println(currentDate);//out here is the jsp implicit object(9)
   %>
   <br/>
   <!-- expression -->
   <%= new Date() %><!-- print something on the browser with out using out.println -->
   <!-- JSP declaration(variables and methods(will be kept outside the _jspservice method)) -->
   <%! 
   	int i = 10;
   
   String print(String s){
	   return "Hello " +s;
   }
   %>
   <%=i %>
   <%=print("JSP") %>
</body>
</html>