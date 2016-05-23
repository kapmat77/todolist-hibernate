<%-- 
    Document   : index
    Created on : 2016-05-22, 22:51:49
    Author     : Kapmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TODO List - Add page</h1>

		<form action="addToDataBase.jsp" method="post">
			Name:<input type="text" name="name" style="margin-left: 40px"/>
			<br>
			<br>
			Description:<input type="text" name="description" style="margin-left: 4px"/>
			<br>
			<br>
			Date:<input id="datepicker" name="date" style="margin-left: 48px"/>
			<br>
			<br>
			<input type="submit" value="Add task"/>
		</form>

		<br>
		<form>
			
		</form>
		<br>
		<form action="index.jsp">
			<input type="submit" value="Cancel">
		</form>

    </body>
</html>
