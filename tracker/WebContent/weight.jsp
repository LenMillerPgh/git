<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
%>

<sql:setDataSource 
	dataSource="jdbc:mysql://localhost:3306/foodtrack" 
	user="root" 
	password="Delta510!" 
/>

<c:set var="dateWeight" value="${param.dateWeight}" />
<c:set var="weightVal" value="${param.weightVal}" />
<c:set var="weightId" value="${param.weightId}" />

<c:if test="${param.delete == 'Delete'}">
	<sql:update>
		    DELETE FROM weight WHERE weight_id = ?
	            <sql:param value="${weightId}" />
	</sql:update>
</c:if>

<c:if test="${param.action == 'Submit'}">
	<sql:update>
		    INSERT INTO weight(weight_date, weight_val) VALUES(?, ?)
	            <sql:param value="${dateWeight}" />
		<sql:param value="${weightVal}" />
	</sql:update>
	<c:set var="dateWeight" value="" />
	<c:set var="weightVal" value="" />
</c:if>

<!DOCTYPE html>

<html>
<head>
	<title>Miller Tracker</title>
	<link rel="icon" type="image/x-icon" href="./images/calendar.gif">
	<link rel="stylesheet" type="text/css" href="./lib/w3.css">
	<link rel="stylesheet" type="text/css" href="./lib/stdtheme.css">
	<script src="javascript/general.js" type="text/javascript"></script>
	<!-- ****** END OF STANDARD HEADER ****** -->
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"
		type="text/javascript"></script>
	<script src="javascript/general.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$("#datepicker").datepicker({
				showOtherMonths : true,
				selectOtherMonths : true,
				altFormat : 'YYYY-MM-DD',
				changeMonth : true,
				changeYear : true,
				showOn : "button",
				buttonImage : "images/calendar.gif",
				buttonImageOnly : true,
				buttonText : "Select date",
				defaultDate : 0,
				maxDate : 0,
				showAnim : "explode"
			});
		});
	</script>
</head>
<body>
	<section>
		<h2>Current Weight Values:</h2>
		<hr>
		<form name="weightentry" action="weight.jsp" method="post"
			onSubmit="return checkWeight()">
			Date<input type="text" name="dateWeight" id="datepicker">
			Weight<input type="text" name="weightVal"> <input
				type="submit" name="action" value="Submit">
		</form>
		<hr>
		<table border='1'>
			<tr>
				<th>Date</th>
				<th>Weight (lbs)</th>
				<th>Action</th>
			</tr>

			<sql:query var="qryWeight">
                  SELECT weight_id, weight_date, weight_val FROM foodtrack.weight ORDER BY weight_date DESC
          </sql:query>

			<c:forEach var="row" items="${qryWeight.rows}">
				<tr>
					<td><c:out value="${row.weight_date}" /></td>
					<td><c:out value="${row.weight_val}" /></td>
					<td>
						<form name="delete" action="weight.jsp" method="post">
							<input type="submit" name="delete" value="Delete"> <input
								type="hidden" name="weightId" value="${row.weight_id}">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</section>
</body>
</html>