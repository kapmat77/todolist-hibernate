<%-- 
    Document   : index
    Created on : 2016-05-22, 22:51:49
    Author     : Kapmat
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.kapmat.Connector"%>
<%@page import="com.kapmat.Task"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TODO List - Main page</h1>

		<form action="add.jsp" method="post">
			<input type="submit" value="Add new task"/>
		</form>
		<br>
		<div>
			<%
				List<Task> taskList = Connector.getTaskList();
				for (int i = 0; i < taskList.size(); i++) {
			%>		
			<hr>
			<div style="float: left; width: 250px; margin-left: 20px">
				<%
					
				%>
				<a>
					<%
						if (taskList.get(i).isDone()) {
					%>
					<s style='color:red'> 
						<span style='color:black'>
						<%
							out.print((i + 1) + ".");
							out.print(taskList.get(i).getName());
						%>
						</span>
					</s>
					<% } else {
							out.print((i + 1) + ".");
							out.print(taskList.get(i).getName());
						}
					%>
				</a>
			</div>
			<div style="float: left; width: 250px; margin-left: 20px">
				<a>
					<%
						out.print(taskList.get(i).getDate());
					%>
				</a>
			</div>	
			<div style="float: left; width: 80px;">
				<form action="done.jsp" method="post">
					<input type="hidden" name="objectID" value="<%= taskList.get(i).getId() %>">
					<!--<input type="checkbox" name="name" value="done">Done-->
					<input type="submit" name="name" value="Done">
				</form>
			</div>
			
			<div style="float: left; width: 80px;">
				<form action="edit.jsp" method="post">
					<input type="hidden" name="objectID" value="<%= taskList.get(i).getId() %>">
					<input type="submit" name="action" value="Edit">
				</form>
			</div>
			<div style="float: left; width: 80px;">
				<form action="delete.jsp" method="post">
					<input type="hidden" name="objectID" value="<%= taskList.get(i).getId() %>">
					<input type="submit" name="action" value="Delete">
				</form>
			</div>
			<br>
			<%
				}
			%>
			<hr>
		</div>
    </body>
</html>
