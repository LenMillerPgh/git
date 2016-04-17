function checkWeight()
{
	re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;

	if (!((document.weightentry.weightVal.value >= 100) && (document.weightentry.weightVal.value <= 400)))
	{
		// something is wrong
		alert('Weight must be between 100 and 400 lbs!!');
		return false;
	}
	else if (document.weightentry.dateWeight.value != '' && !document.weightentry.dateWeight.value.match(re)) {
		alert("Invalid date format: " + document.weightentry.dateWeight.value);
		document.weightentry.dateWeight.focus();
		return false;
	}
	// If the script gets this far through all of your fields
	// without problems, it's ok and you can submit the form

	return true;
}