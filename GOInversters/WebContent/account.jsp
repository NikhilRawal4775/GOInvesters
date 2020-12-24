<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GO Investers</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: white;
  border: none;
  color: gray;
  text-align: center;
  width: 200px;
  height:60px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  font-family: 'Courier New', monospace;
  font-size: 20px;
  border-radius: 100px;
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

.sidenav {
  height: 100%;
  opacity: 0.8;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  color: lightpink;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

 .btn-default {
      box-shadow: 1px 2px 5px white;   
  }


</style>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "230px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

//button



</script>
</head>
<body>
 <div  style="width:1535px;height:750px; background-image: url('webBackground3.jpg');background-repeat: no-repeat;background-size: cover;background-position: center;" >
 <span style="font-size:30px;cursor:pointer;font-family: 'Courier New', monospace;color:gray;position: absolute;left:30px;" onclick="openNav()">&#9776; <b>Menu</b></span>
 <table style="font-family: 'Courier New', monospace;font-size:57px;position: absolute;top:0px;right:30px;color:lightpink;">
    <tr>
     <th style="font-size: 90px;" class="" >GO</th>
     <td  style="font-size: 50px;color:gray;" ><b>Investers</b></td>
    </tr>
  </table>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Home.html">Home</a>
  <a href="#about" >About</a>
  <a href="#">Work</a>
  <a href="#">Gallary</a>
  <a href="#">Signin/Signup</a>
</div>
<br><br><br><br><br><br>
<center>
<div style="background:black;opacity:0.8;width:500px;height:450px;border-radius:95px;">
  <div style="width:500px;height:650px;opacity:1;"><br>
  <center> <b> <p style="color:white;font-family: 'Courier New', monospace;font-size:45px;">Sign In</p></b></center>
  
 
  <table style="height:320px;">
   <form action="login" method="post">
    <tr>
      <th style="color: white;font-size:17px;">Email:</th>
    </tr>
     <tr>
      <td><input type="text" name="email" placeholder="Enter Email Here" style="width:300px;height:40px;border: 3px solid lightpink;"></td>
    </tr>
     <tr>
      <th style="color: white;font-size:17px;">Password:</th>
    </tr>
     <tr>
      <td><input type="password" name="password" placeholder="Enter Password Here" style="width:300px;height:40px;border: 3px solid lightpink;"></td>
    </tr>
    <tr>
      <td><center><input type="submit" class="btn btn-default" style="background:lightpink;color:black;width:150px;" value="Sign in"></center></td>
    </tr>
     </form>
    <tr>
      <td><center><a href="signup.jsp"><input type="button" class="btn btn-default" style="background:lightpink;color:black;width:150px;" value="Sign up"></a></center></td>
    </tr>
  </table>  
 
  <pre></pre>
  </div>
  
</div>
</center>
  </div>
</body>
</html>