<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	Class.forName("org.apache.derby.jdbc.ClientDriver");
%>
<sql:setDataSource dataSource="jdbc:derby://localhost:1527/MyDB"
	user="app" password="app" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css" media="all">
<!--
td,th {
  text-align: center;
}
-->
</style>

<title>Miller Tracker - Weight</title>
</head>
<body>


	<h2>Current Weight Values:</h2>
	<table border='1'>
		<tr>
			<th>Date</th>
			<th>Weight (lbs)</th>
		</tr>

		<sql:query var="qryWeight">
                  SELECT weight_date, weight_val FROM app.weight
          </sql:query>

		<c:forEach var="row" items="${qryWeight.rows}">
			<tr>
				<td><c:out value="${row.weight_date}" /></td>
				<td><c:out value="${row.weight_val}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>