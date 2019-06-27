<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
</head>
<body>

	Account No:: &nbsp;&nbsp;
	<input type="text" id="accno">
	<br>
	<br>
	<button onclick="callServer()">Fetch Details</button>
	<br>
	<br> Name:: &nbsp;&nbsp;
	<input type="text" id="name">
	<br>
	<br> Balance:: &nbsp;&nbsp;
	<input type="text" id="balance">
	<br>
	<br>


	<script type="text/javascript">
		function callServer() {

			var acc = document.getElementById("accno").value;
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					/* document.getElementById("response").innerHTML = this.responseText; */
					
					var data=this.responseText.split("-");
					
					document.getElementById("name").value = data[0];
					document.getElementById("balance").value = data[1];
				}
			};
			xhttp.open("GET", "data.jsp?accno=" + acc, true);
			xhttp.send();
		}
	</script>


</body>
</html>