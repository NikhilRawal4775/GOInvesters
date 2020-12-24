<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('webBackground.jpg'); background-repeat: no-repeat;background-attachment: fixed;background-size: 100% 100%;">
<center>

<center><h2 style="color:green;">SIGNUP</h2></center>
<form action="signup" method="post">
<center>
<table border=0 width=1500 style="color:black;">
<tr>
<td><p style="font-size:20px">Username</p></td>
<td><input type="text" name="username2" style="color:green;padding: 7px 7px;" placeholder="Enter Username Here" style="width:100;height:30;"></td>
</tr>
<tr>
<tr>
<td><p style="font-size:20px">Name</p></td>
<td><input type="text" name="name2" style="color:green;padding: 7px 7px;" placeholder="Enter name Here" style="width:100;height:30;"></td>
</tr>
<tr>

<tr>
<td><p style="font-size:20px">Age</p></td>
<td><input type="text" name="age" style="color:green;padding: 7px 7px;" placeholder="Enter Age Here" style="width:100;height:30;"></td>
</tr>
<tr>

<tr>
<td><p style="font-size:20px">Phone Number</p></td>
<td><input type="text" name="phno" style="color:green;padding: 7px 7px;" placeholder="Enter PhNumber Here" style="width:100;height:30;"></td>
</tr>
<tr>

<tr>
<td><p style="font-size:20px">Profession</p></td>
<td><input type="text" name="prof" style="color:green;padding: 7px 7px;" placeholder="Enter Profession Here" style="width:100;height:30;"></td>
</tr>
<tr>

<tr>
<td><p style="font-size:20px">Salary</p></td>
<td><input type="text" name="salary" style="color:green;padding: 7px 7px;" placeholder="Enter Salary Here" style="width:100;height:30;"></td>
</tr>
<tr>

<td><p style="font-size:20px">Password</p></td>
<td><input type="password" name="password"  placeholder="Enter Password Here" style="color:green;padding: 7px 7px;"></td>
</tr>
<tr>
<td><p style="font-size:20px">Comfirm Password</p></td>
<td><input type="password" name="cpassword"  placeholder="Enter Password Here" style="color:green;padding: 7px 7px;"></td>
</tr>
<tr>
<td>
<p style="font-size: 20px;">Image</p>
</td>
<td><input type="file"  name="img" accept="image/*"></td>
</tr>
<tr>
<td colspan="2"><center><br><input type="submit" value="create account" name="signup" style="background:green;color:white;width:120px;height:40px;"></center></td>
</tr>
</table>
</center>

</center>
</form>
</body>
</html>