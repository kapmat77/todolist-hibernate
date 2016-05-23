<%-- 
    Document   : addToDataBase
    Created on : 2016-05-23, 14:13:20
    Author     : Kapmat
--%>

<%@page import="com.kapmat.Connector"%>
<jsp:useBean id="obj" class="com.kapmat.Task"></jsp:useBean>
<jsp:setProperty property="name" name="obj"/>
<jsp:setProperty property="description" name="obj"/>
<jsp:setProperty property="date" name="obj"/>

<%
	out.println("NEW TASK");
%>
<br>
<br>
<%
	out.println("Name: " + obj.getName());
%>
<br>
<%
	out.println("Description: " + obj.getDescription());
%>
<br>
<%
	out.println("Date: " + obj.getDate());
%>
<br>
<%
	Connector.addToDatabase(obj);
%>

<br>
<br>
<form action="index.jsp">
	<input type="submit" value="Back to TODO List">
</form>
