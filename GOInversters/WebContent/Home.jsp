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
</head>

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
      box-shadow: 5px 5px 5px gray;   
  }

</style>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "230px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}


</script>
<body>
<div  style="width:1535px;height:750px; background-image: url('webBackground.jpg');background-repeat: no-repeat;background-size: cover;background-position: center;" >
 <span style="font-size:30px;cursor:pointer;font-family: 'Courier New', monospace;color:gray;position: absolute;left:30px;" onclick="openNav()">&#9776; <b>Menu</b></span>
  <table style="font-family: 'Courier New', monospace;font-size:57px;position: absolute;top:200px;left:200px;color:lightpink;">
    <tr>
     <th style="font-size: 90px;" >GO</th>
     <td  style="font-size: 50px;color:gray;" ><b>Investers</b></td>
    </tr>
  </table>

  <pre style="font-family: 'Courier New', monospace;font-size:15px;position: absolute;top:370px;left:250px;color:gray;">
    When it comes to investing, nothing will pay
    off more than educating yourself.Do the necessary
    research and analysis before making any investment decisions.
 </pre>

 <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Home.html">Home</a>
  <a href="#about" >About</a>
  <a href="#">Work</a>
  <a href="#">Gallary</a>
  <a href="#">Signin/Signup</a>
</div>

<button class="btn button btn-default" style="position:absolute;right:5px;border: 1px solid gray;background:lightpink;font-size:16px;height:40px;width:150px;">Signin/Signup</button>

 <a href="account.jsp"> <button  type="button" class="btn button btn-default" style="background:white;color:gray;font-family: 'Courier New', monospace;position: absolute;top:520px;left: 200px;height:60px;width:200px;border: 3px solid lightpink;"><span><b>$-Invest-$</b></span></button></a>
</div>


<div  style="width:1535px;height:750px;" id="about">
<br><br><br>
  <center><b><p style=" font-family: 'Courier New', monospace;font-size:57px; color: lightpink;">$-ABOUT-$</p></b></center>
  <div style="width:400px;height:400px;background-image: url('webBackground2.png');background-repeat: no-repeat;background-size: cover;background-position: center;position: absolute;top:1100px;left:150px;"></div>
  <pre style="font-family: 'Courier New', monospace;font-size:16px;color: gray;position: absolute;top:950px;left:80px;">
The act of investing has the goal of generating income and increasing 
value over time. An investment can refer to any mechanism used for 
generating future income. This includes the purchase of bonds, stocks,
or real estate property, among other examples. Additionally,purchasing
a property that can be used to produce goods can be considered an investment.
</pre>

<div  style="width:280px;height:550px;background-image: url('iphone2.png');background-repeat: no-repeat;background-size: cover;background-position: center;position: absolute;top:930px;right:250px;"></div>
</div>

</body>
</html>