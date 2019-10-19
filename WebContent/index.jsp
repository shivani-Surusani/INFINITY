<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Login Page</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
    <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
    <link rel="stylesheet" href="vendor/animate.css/animate.css" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

    <!-- App styles -->
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
   <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" /> 
    <link rel="stylesheet" href="styles/style.css">
    <style type="text/css">
    	.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #449948;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    </style>
	<h3><marquee><strong>Infinity DTH Services</strong></marquee></h3>
</head>
<style>
/* Mixins */
/* bg shortcodes */
.bg-gradient1 span,
.bg-gradient1:before {
  background: #52A0FD;
  background: linear-gradient(to right, #52A0FD 0%, #00e2fa 80%, #00e2fa 100%);
}

.bg-gradient2 span,
.bg-gradient2:before {
  background: #44ea76;
  background: linear-gradient(to right, #44ea76 0%, #39fad7 80%, #39fad7 100%);
}

.bg-gradient3 span,
.bg-gradient3:before {
  background: #fa6c9f;
  background: linear-gradient(to right, #fa6c9f 0%, #ffe140 80%, #ffe140 100%);
}

/* General */
.wrapper {
  margin: 5% auto;
  text-align: center;
  -webkit-transform-style: perserve-3d;
          transform-style: perserve-3d;
  perspecive: 800px;
}

a {
  text-decoration: none;
}
a:hover, a:focus, a:active {
  text-decoration: none;
}

/* fancy Button */
.fancy-button {
  display: inline-block;
  margin: 30px;
  font-family: 'Montserrat', Helvetica, Arial, sans-serif;
  font-size: 17px;
  letter-spacing: 0.03em;
  text-transform: uppercase;
  color: #ffffff;
  position: relative;
}
.fancy-button:before {
  content: '';
  display: inline-block;
  height: 40px;
  position: absolute;
  bottom: -5px;
  left: 30px;
  right: 30px;
  z-index: -1;
  border-radius: 30em;
  -webkit-filter: blur(20px) brightness(0.95);
          filter: blur(20px) brightness(0.95);
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.3s ease-out;
}
.fancy-button i {
  margin-top: -1px;
  margin-right: 20px;
  font-size: 1.265em;
  vertical-align: middle;
}
.fancy-button span {
  display: inline-block;
  padding: 18px 60px;
  border-radius: 50em;
  position: relative;
  z-index: 2;
  will-change: transform, filter;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.3s ease-out;
}
.fancy-button:focus, .fancy-button:active {
  color: #ffffff;
}
.fancy-button:hover {
  color: #ffffff;
}
.fancy-button:hover span {
  -webkit-filter: brightness(1.05) contrast(1.05);
          filter: brightness(1.05) contrast(1.05);
  -webkit-transform: scale(0.95);
          transform: scale(0.95);
}
.fancy-button:hover:before {
  bottom: 0;
  -webkit-filter: blur(10px) brightness(0.95);
          filter: blur(10px) brightness(0.95);
}
.fancy-button.pop-onhover:before {
  opacity: 0;
  bottom: 10px;
}
.fancy-button.pop-onhover:hover:before {
  bottom: -7px;
  opacity: 1;
  -webkit-filter: blur(20px);
          filter: blur(20px);
}
.fancy-button.pop-onhover:hover span {
  -webkit-transform: scale(1.04);
          transform: scale(1.04);
}
.fancy-button.pop-onhover:hover:active span {
  -webkit-filter: brightness(1) contrast(1);
          filter: brightness(1) contrast(1);
  -webkit-transform: scale(1);
          transform: scale(1);
  transition: all 0.15s ease-out;
}
.fancy-button.pop-onhover:hover:active:before {
  bottom: 0;
  -webkit-filter: blur(10px) brightness(0.95);
          filter: blur(10px) brightness(0.95);
  transition: all 0.2s ease-out;
}
.box{
margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
  text-align: center;
  padding-bottom: 75px;
}



</style>
<body class="blank">
<div class="color-line"></div>
<br><br>
<form style="text-align: center">
<div style="right: -600px; top: 10px; position: relative;">
        <INPUT TYPE="hidden" NAME="buttonName" value="Logout">
        <button type="submit" class= "button" formaction="Controller" VALUE="Logout">Logout</button>
</div>
</form>

<div style="font-size:25px;" class = "box">
<form action="Controller" style="text-align: center">
<br><br>
	
<div>
    <b>Billing Type</b>
    
    <input type="radio" id="billingType1"
     name="billType" value="prepaid">
    <label for="billingType1">Prepaid</label><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" id="billingType2"
     name="billType" value="postpaid">
    <label for="billingType2">Postpaid</label>
  </div><br>
  <div>
  <b>STB Type</b>
  <select name="stbType">
  <option value="standard">Standard</option>
  <option value="hd">HD</option>
  <option value="hd+">HD+</option>
  <option value="iptv">IPTV</option>
</select><br><br>
  </div>
  
  <div>
  <span>
        <INPUT TYPE="hidden" NAME="buttonName" value="Search">
        <button type="submit" class= "button" VALUE="Search">Search</button>
	</span>
  </div>
</form>
</div>

</body>
</html>