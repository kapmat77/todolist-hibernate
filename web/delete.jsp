<%@page import="com.kapmat.Task"%>
<%@page import="com.kapmat.Connector"%>

<%
	String objectID = request.getParameter("objectID");
	Task currentTask = Connector.getObjectByID(Integer.valueOf(objectID));
	out.print(currentTask.getName());
%>
<br>
<%
	out.print(currentTask.getDescription());
%>
<br>
<%
	out.print(currentTask.getDate());
	Connector.deleteFromDataBase(currentTask.getId());
	response.sendRedirect("index.jsp"); 
%>