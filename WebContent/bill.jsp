<%@ page import="java.util.*" %> 
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
	<h3><marquee><strong>Infinity DTH Services</strong></marquee></h3>
</head>
<body class="blank">
<div class="color-line"></div>
<br><br>
<form action="Controller" style="text-align: center">
<div style="right: -650px; top: 30px; position: relative;">
        <INPUT TYPE="hidden" NAME="buttonName" value="Logout">
        <button type="submit" class= "button" VALUE="Logout">Logout</button>
</div>
</form>


<%
int count=0;
String color = "#F9EBB3";


//if(request.getAttribute("empList")!=null)
//{
ArrayList<String> al1 = (ArrayList<String>)request.getAttribute("al1");
if((count%2)==0){
color = "#eeffee";
}
else{
color = "#F9EBB3";
}
count++;

%>

<%
//}

%>
<%
if(count==0){
%>

<%
}
%>
<div class="pricingdiv">
<ul class="theplan">
		<li class="title"><span class="icon-trophy" style="color:yellow"></span> <b>STB Bill</b></li>
		<li><b>Name:</b> <%=al1.get(0)%></li>
		<li><b>STB type:</b> <%=al1.get(1)%></li>
		<li><b>STB Mac Id:</b> <%=al1.get(2)%></li>
		<li><b>STB serial number:</b> <%=al1.get(3)%></li>
		<li><b>STB price:</b> <%=al1.get(4)%></li>
		<li><b>STB installation:</b><%=al1.get(5)%></li>
		<li><b>deposit:</b> <%=al1.get(6)%></span></li>
		<li><b>Discount:</b> <%=al1.get(7)%></li>
		<li><b>Tax:</b> <%=al1.get(8)%></li>
		<li><b>Amount:</b> <%=al1.get(9)%></li><br>
		<li class="pricebutton">
		
		<table>
		<th>
		
        <button type="submit" class= "button"  onclick="history.back()" VALUE="back">Back</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
		
		</th>
		
		<th>
		<FORM NAME="form1" action="Controller" METHOD="GET">
        <INPUT TYPE="hidden" NAME="buttonName" value="Checkout">
        <button type="submit" class= "button" VALUE="Checkout">Buy</button>
    	 </FORM>
		</th>
	
		</table>
		
		
		
    </li>
    </ul>
    </div>
    
    
    
</body>
</html>