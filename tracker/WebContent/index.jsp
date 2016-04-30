<!DOCTYPE html>
<html>
<head>
	<title>Miller Tracker</title>
	<link rel="icon" type="image/x-icon" href="./images/calendar.gif">
	<link rel="stylesheet" type="text/css" href="./lib/w3.css">
	<link rel="stylesheet" type="text/css" href="./lib/stdtheme.css">
	<script src="javascript/general.js" type="text/javascript"></script>
</head>
<body>
	<header class='w3-container top'>
		<a class='toptext'>Tracking Application</a> <a
			class='w3-right toptext-right'>If you can track it, you can manage
			it!!</a>
	</header>
	<nav class='w3-navbar w3-card-2 w3-slim topnav' id='topnav'>
		<div style='float: left; height: 44px'>
			<a href='index.jsp' class='topnav-icons fa fa-home w3-left'
				title='Home'></a> 
			<a href='weight.jsp' class='w3-hide-small'
				title='Weight Tracking / Information'>Weight</a> 
			<a href='steps.jsp' class='w3-hide-small'
				title='Step Tracking / Information'>Steps</a> 
			<a href='water.jsp' class='w3-hide-small' 
				title='Water Tracking / Information'>Water</a>
			<a href='food.jsp' class='w3-hide-small'
				title='Food Tracking / Information'>Food</a>
		</div>
		<div style='float: right; height: 44px;'>
			<a class='w3-hide-small'> It is now: <span id="datecheck"></span>
			<script type="text/javascript">
				var d = new Date();
				document.getElementById("datecheck").innerHTML = d.toLocaleString();
			</script>
			</a>
		</div>
	</nav>
	<section>
		<p>Len Miller's Tracker</p>
	</section>
</body>
</html>