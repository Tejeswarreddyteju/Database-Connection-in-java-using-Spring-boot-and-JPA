<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<style>
textarea {
	resize: none;
	height: 15px;
	width: 400 px;
}

#cbx {
	color: black;
	font-weight: bold;
}

input.smaller {
	transform: scale(0.8);
}

input[type="checkbox"] {
	display: inline-block;
	color: black;
}

.black {
	color: black;
}

body {
	background-color: white;
	padding: 60px 20px;
}

form {
	margin: 0 auto;
	padding: 10px;
	width: 350px;
	color: brown;
	font-style: oblique;
	font-weight: bold;
	border: 3px solid #f1f1f1;
}

h3 {
	text-align: center;
	color: darkblue;
	font-family: cursive;
	font-style: italic;
}

input[type=text], input[type=date], input[type=textarea], select {
	width: 100%;
	padding: 2px 0px;
	margin: 8px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 4px 10px;
	margin: 15px;
	border: medium;
	border-radius: 22px;
	cursor: pointer;
	width: 40%;
}
</style>
</head>
<body>
	<h3>Welcome to User Registration Page</h3>
	<form  method="post">
		<table>
			<tr>
				<td><label>First Name</label></td>
				<td><input type="text" name="firstname" id="firstname"
					pattern="[a-zA-Z].{4,50}"></td>
			</tr>
			<tr>
				<td><label>Last Name</label></td>
				<td><input type="text" name="lastname" id="lastname"></td>
			</tr>
			
			<tr>
				<td><label>Gender</label></td>
				<td><input type="radio" name="gender" id="male" value="male"
					required="required"><label class="black" for="male">Male</label>
					<input type="radio" name="gender" id="female" value="female" required="required"><label
					class="black" for="female">Female</label> <input type="radio"
					name="gender" id="others" value="others" required="required"><label
					class="black" for="others">Others</label></td>
			</tr>
			<tr>
				<td><label>Contact Number</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


				
				<td><input type="text" name="c_number" id="c_number"
					required="required" pattern=[0-9]{10}></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="checkbox" class="smaller" id="mycheck"
					onclick="generateid()"><em id="cbx">generate id</em>
			</tr>

			<tr>
				<td><label>User Id</label>
				<td><input type="text" name="userId" id="userId"
					required="required">
			</tr>

			<tr>
				<td><label>Password</label>
				<td><input type="text" name="password" id="password"
					required="required">
			</tr>

			<tr>
				<td><label>Address</label>
				<td><textarea name="address" id="address" required="required"
						rows="5" cols="20"></textarea></td>
			</tr>

		</table>
		<div style="text-align: center">
			<input type="submit" name="Enter" value="Register">
		</div>
	</form>
	<script>
		function generateid() {
			var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@$#"
			var random_id = '';
			var checkbox = document.getElementById("mycheck");

			for (var i = 0; i < 8; i++) {
				random_id += chars.charAt(Math.floor(Math.random()
						* chars.length));
			}
			if (checkbox.checked == true) {
				document.getElementById("userId").value = random_id;
			} else {
				document.getElementById("userId").value = "";
			}
		}
	</script>
</body>
</html>