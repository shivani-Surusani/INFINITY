<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String session_val = session.getAttribute("cust_name").toString(); 
System.out.println("session_val"+session_val);
%>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,100' rel='stylesheet' type='text/css'>
<link href='styles/style.css' rel='stylesheet' type='text/css'>
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
  right:-1200px;
  bottom: 20px;
  position: relative;
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

<body class="blank">
<div class="color-line"></div>
<h3 style="padding-top: 5px; text-align: center;"><b>TV Packages</b></h3>
<form action="Controller" id="packages" method="get" >
<div class="price-table-wrapper">
  <div class="pricing-table">
    <h2 class="pricing-table__header">- Default Package -</h2>
    <h3 class="pricing-table__price">$50</h3>
    <input type="checkbox" name="package" id="package" value="package1"  onclick="getTotalPrice()" checked>

	<a class="pricing-table__button" name="package" id="package" value="package1"  onclick="getTotalPrice()">
      Channels
    </a>
    <ul class="pricing-table__list">
      <li>TNT</li>
      <li>HBO</li>
      <li>AMC</li>
      <li>FX</li>
    </ul>
  </div>
  <div class="pricing-table featured-table">
    <h2 class="pricing-table__header">-   Sports & News   -</h2>
    <h3 class="pricing-table__price">$75</h3>
    	<input type="checkbox" name="package" id="package" value="package2"  onclick="getTotalPrice()">

	<a class="pricing-table__button" name="package" id="package" value="package2"  onclick="getTotalPrice()">
      Channels
    </a>
    <ul class="pricing-table__list">
      <li>ESPN</li>
      <li>SNBC</li>
      <li>FOX Sports</li>
      <li>Sky Sports</li>
    </ul>
  </div>
  <div class="pricing-table">
    <h2 class="pricing-table__header">-   Entertainment   -</h2>
    <h3 class="pricing-table__price">$59</h3>
	<input type="checkbox" name="package" id="package" value="package3"  onclick="getTotalPrice()">
	<a class="pricing-table__button" name="package" id="package" value="package3"  onclick="getTotalPrice()">
      Channels
    </a>
    <ul class="pricing-table__list">
      <li>HBO+</li>
      <li>USA Network</li>
      <li>VH1 HD</li>
      <li>VOX</li>
    </ul>
	</div>
	
	<div class="pricing-table">
    <h2 class="pricing-table__header">-      Kids & Pop     -</h2>
    <h3 class="pricing-table__price">$40</h3>
	<input type="checkbox" name="package" id="package" value="package4"  onclick="getTotalPrice()">
	<a class="pricing-table__button" name="package" id="package" value="package4"  onclick="getTotalPrice()">
      Channels
    </a>
    <ul class="pricing-table__list">
      <li>Nickelodeon</li>
      <li>USA</li>
      <li>TBS</li>
      <li>Cartoon Network</li>
    </ul>
	</div>
</div>
<br>
<table align="center" style="font-size:25px;">
<tr>
<th>Amount Payable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>

<th>Purchase date</th>
</tr>

<tr>
<th>
<div id="totalPrice"></div>
</th>

<th>
<div id="date"><script> document.write(new Date().toLocaleDateString()); </script></div>
</th>

</tr>
</table>


<INPUT TYPE="hidden" NAME="buttonName" value="Submit">
     <button type="submit" class= "button" VALUE="Submit">Confirm Order</button>
</form> 
<form action="Controller" style="text-align: center">
<div style="right: -600px; top: -16px; position: relative;">
        <INPUT TYPE="hidden" NAME="buttonName" value="Logout">
        <button type="submit" class= "button" VALUE="Logout">Logout</button>
</div>
</form>   
</body>
<script type="text/javascript">
var session_obj= '<%=session_val%>';
var package_prices = new Array();
package_prices["package1"]=50;
package_prices["package2"]=75;
package_prices["package3"]=59;
package_prices["package4"]=40;

function getTotalPrice()
{
    var TotalPrice=0;
    var theForm = document.forms["packages"];
    var selectedpackages = theForm.elements["package"];
    for(var i = 0; i < selectedpackages.length; i++)
    {
        if(selectedpackages[i].checked)
        {
            TotalPrice= TotalPrice+package_prices[selectedpackages[i].value];
        }
    }
    document.getElementById('totalPrice').innerHTML =TotalPrice;
}

</script>
</html>