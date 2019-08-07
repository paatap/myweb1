<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 4/24/19
  Time: 1:06 PM
  To change this template use File | Settings | File Templates.
  https://xd.adobe.com/spec/d9077aa0-6167-477e-5f90-1a170dbbf6b6-af36/
  https://www.jqueryscript.net/time-clock/Super-Tiny-jQuery-HTML5-Date-Picker-Plugin.html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" language="java">
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon"  type="image/ico"  href="favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Compare</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="css/mycss.css" rel="stylesheet">

    <link href="css/jquery.datepicker2.css" rel="stylesheet">
    <script src="js/jquery.datepicker2.js"></script>

    <script src="js/jquery.md5.min.js"></script>

    <link rel="stylesheet" href="css/intlTelInput.css">
    <script src="js/intlTelInput-jquery.js"></script>

    <script src="js/myjs.js"></script>
    <SCRIPT src="js/linkedselect.js"></script>
</head>
<body style="font-family: bpg_mrgvlovani_2010;">



<%@include file="header.jsp" %>



<%
    if(myw.jsptype.equals("about")){%>

    <%@ include file="about.jsp"%>

<%}else if(myw.jsptype.equals("parameters")){%>

    <%@ include file="parameters.jsp"%>

<%}else if(myw.jsptype.equals("car")){%><%@ include file="car.jsp"%>

<%}else if(myw.jsptype.equals("liability")){%><%@ include file="liability.jsp"%>

<%}else if(myw.jsptype.equals("travel")){%><%@ include file="travel.jsp"%>

<%}else if(myw.jsptype.equals("greencard")){%><%@ include file="greencard.jsp"%>

<%}else if(myw.jsptype.equals("property")){%><%@ include file="property.jsp"%>

<%}else if(myw.jsptype.equals("health")){%><%@ include file="health.jsp"%>

<%}else{ %>
    <%@ include file="index0.jsp"%>
<%} %>
<!--=============================================footer================================================-->
<%@include file="footer.jsp" %>



<script>

$(document).ready(function () {

myready();

});
</script>

</body>
</html>
