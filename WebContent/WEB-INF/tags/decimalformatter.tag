<%@tag import="java.text.DecimalFormat"%>
<%@ tag language="java" pageEncoding="UTF-8"%>

<%@attribute name="input" required="true"%>
<%@attribute name="pattern" required="true"%>

<% 
	DecimalFormat formatter = new DecimalFormat(pattern);
	out.println(formatter.format(Double.parseDouble(input)));		
%>
