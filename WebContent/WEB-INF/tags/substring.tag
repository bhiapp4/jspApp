<%@ tag language="java" pageEncoding="UTF-8"%>

<%@attribute name="input" required="true" %>
<%@attribute name="startIndx" required="true" %>
<%@attribute name="endIndx" required="true" %>

<!--  <b>${input}</b>-->
<%
	String x = input;
	out.println(x.substring(Integer.parseInt(startIndx), Integer.parseInt(endIndx)));
%>