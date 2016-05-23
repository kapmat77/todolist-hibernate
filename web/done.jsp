<%@page import="com.kapmat.Task"%>
<%@page import="com.kapmat.Connector"%>

<%
	String objectID = request.getParameter("objectID");
	Task currentTask = Connector.getObjectByID(Integer.valueOf(objectID));
	if (currentTask.isDone()) {
		currentTask.setDone(false);
	} else {
		currentTask.setDone(true);
	}
	
	Connector.updateStatus(Integer.valueOf(objectID), currentTask);
	response.sendRedirect("index.jsp"); 
%>