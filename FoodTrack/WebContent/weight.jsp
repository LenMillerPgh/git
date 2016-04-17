<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	Class.forName("org.apache.derby.jdbc.ClientDriver");
%>
<sql:setDataSource dataSource="jdbc:derby://localhost:1527/MyDB"
	user="app" password="app" />

<c:set var="dateWeight" value="${param.dateWeight}" />
<c:set var="weightVal" value="${param.weightVal}" />

<c:if test="${param.action == 'Submit'}">
	<sql:update>
		    INSERT INTO app.weight(weight_date, weight_val) VALUES(?, ?)
	            <sql:param value="${dateWeight}" />
		<sql:param value="${weightVal}" />
	</sql:update>
	<c:set var="dateWeight" value="" />
	<c:set var="weightVal" value="" />
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css" media="all">
<!--
td, th {
	text-align: center;
}
-->
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<title>Miller Tracker - Weight</title>
</head>
<body>


	<h2>Current Weight Values:</h2>
	<hr>
	<form action="weight.jsp" method="post">
		Date<input type="text" name="dateWeight" id="datepicker">
		Weight<input type="text" name="weightVal"> <input
			type="submit" name="action" value="Submit">
	</form>
	<hr>
	<table border='1'>
		<tr>
			<th>Date</th>
			<th>Weight (lbs)</th>
		</tr>

		<sql:query var="qryWeight">
                  SELECT weight_date, weight_val FROM app.weight ORDER BY weight_date DESC
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