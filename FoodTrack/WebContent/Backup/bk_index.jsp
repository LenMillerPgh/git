<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Miller Tracker</title>
<link rel="icon" type="image/x-icon" href="./images/calendar.gif">
<link rel="stylesheet" type="text/css" href="./lib/w3.css">
<link rel="stylesheet" type="text/css" href="./lib/stdtheme.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"> -->
</head>
<body>

	<div class='w3-container top'>
		<a class='miller-logo'>Len Miller<span
			class='tracker'>Tracking Application</span></a>
		<div class='w3-right toptext w3-wide'>If you can track it, you can manage it!!</div>
	</div>
	<div class='w3-navbar w3-card-2 w3-slim topnav' id='topnav'>
		<div style='overflow: auto;'>
			<div style='float: left; width: 50%; overflow: hidden; height: 44px'>
				<a href='index.jsp' class='topnav-icons fa fa-home w3-left'
					title='Home'></a> 
				<a href='weight.jsp' class='w3-hide-small'
					title='Weight Informaton'>Weight</a>
				<a href='steps.jsp'	class='w3-hide-small' 
					title='Steps'>Steps</a>
			</div>
			<div
				style='float: right; width: 110px; overflow: hidden; height: 44px;'>
				<a href='javascript:void(0);'
					class='topnav-icons fa fa-search w3-right'
					onclick='w3_open_nav("search")' title='Search W3Schools'></a> <a
					href='javascript:void(0);'
					class='topnav-icons fa fa-globe w3-right'
					onclick='openGoogleTranslate();w3_open_nav("translate")'
					title='Translate W3Schools'></a>
			</div>
			<div class='w3-hide-small'
				style='float: right; width: 30%; overflow: hidden; height: 44px;'>
				<a id='topnavbtn_tutorials' href='javascript:void(0);'
					onclick='w3_open_nav("tutorials")' title='Tutorials'>TUTORIALS
					<i class='fa fa-caret-down'></i><i class='fa fa-caret-up'
					style='display: none'></i>
				</a><a id='topnavbtn_references' href='javascript:void(0);'
					onclick='w3_open_nav("references")' title='References'>REFERENCES
					<i class='fa fa-caret-down'></i><i class='fa fa-caret-up'
					style='display: none'></i>
				</a><a id='topnavbtn_examples' href='javascript:void(0);'
					onclick='w3_open_nav("examples")' title='Examples'>EXAMPLES <i
					class='fa fa-caret-down'></i><i class='fa fa-caret-up'
					style='display: none'></i></a><a href='/forum/default.asp'>FORUM</a>
			</div>
		</div>
		<div id='nav_tutorials'
			class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
		<div id='nav_references'
			class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
		<div id='nav_examples'
			class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
		<div id='nav_translate'
			class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
		<div id='nav_search'
			class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
	</div>

	<p>Len Miller's Tracker</p>
	<hr size="10">
	<a href="weight.jsp">Weight Tracking</a>
</body>
</html>