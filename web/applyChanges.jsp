<%@page import="com.kapmat.Task"%>
<%@page import="com.kapmat.Connector"%>
<jsp:useBean id="obj" class="com.kapmat.Task"></jsp:useBean>
<jsp:setProperty property="name" name="obj"/>
<jsp:setProperty property="description" name="obj"/>
<jsp:setProperty property="date" name="obj"/>

<%
	String objectID = request.getParameter("objectID");
	Task currentTask = Connector.getObjectByID(Integer.valueOf(objectID));
	Connector.updateTask(Integer.valueOf(objectID), obj);
	response.sendRedirect("index.jsp"); 
%>