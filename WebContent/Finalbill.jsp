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
<br><br><br><br><br><br>

<%
int count=0;
String color = "#F9EBB3";


//if(request.getAttribute("empList")!=null)
//{
ArrayList<String> al2 = (ArrayList<String>)request.getAttribute("al2");
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
		<li><b>Name:</b> <%=al2.get(0)%></li>
		<li><b>STB type:</b> <%=al2.get(1)%></li>
		<li><b>BILL tYPE:</b> <%=al2.get(2)%></li>
		<li><b>ID:</b> <%=al2.get(3)%></li>
		<li><b>AMOUNT:</b> <%=al2.get(4)%></li>
		<br>
		<li class="pricebutton">
		
    </li>
    </ul>
    </div>
</body>
</html>