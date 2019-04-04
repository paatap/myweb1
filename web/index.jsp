<%@ page import="mypack.titles" %>
<%@ page import="mypack.bb" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/28/19
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
  <title>Title</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <link href="css/mycss.css" rel="stylesheet">
  <script type="text/javascript" src="js/myjs.js"></script>


</head>
<body>
<%
  System.out.println("11111111111111111");
  //mypack.titles.reloadlang();
  mypack.titles tit=new mypack.titles();
    bb.printvars(request);
  String bcl=request.getParameter("buttonclick");
  String bval=request.getParameter("lang");
  if (bval!=null&&bcl!=null){
      if (bcl.equals("lang")){
          if (bval.equals("1")) tit.langid=1;
          else if (bval.equals("2")) tit.langid=2;
          else tit.langid=0;
      }
  }
%>

<form action='index.jsp' method="post" name='my_table' id='my_table'>
  <input type=hidden name=buttonclick>
  <input type=hidden name=buttonparam>

  <table>
<tr><td>
<img src="icons/logo.png">
</td><td width="100%">
<!-- The navigation menu -->
<div class="navbar">
  <a href="#main"><%=tit.gettitle0("_main")%></a>
  <div class="subnav">
    <button class="subnavbtn"><%=tit.gettitle0("_about")%> <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#company">company</a>
      <a href="#team">team</a>
      <a href="#careers">Careers</a>
    </div>
  </div>
  <div class="subnav">
    <button class="subnavbtn"><%=tit.gettitle0("_insurance")%> <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#bring">Bring</a>
      <a href="#deliver">Deliver</a>
      <a href="#package">Package</a>
      <a href="#express">Express</a>
    </div>
  </div>
  <div class="subnav">
    <button class="subnavbtn">Partners <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#link1">Link 1</a>
      <a href="#link2">Link 2</a>
      <a href="#link3">Link 3</a>
      <a href="#link4">Link 4</a>
    </div>
  </div>
  <a href="#contact">Contact</a>
</div>
</td><td>


  <div class="custom-select" onclick="mybuttonclick('lang','0');">
    <select id="lang" name="lang">
      <%=tit.getlangs()%>
    </select>
  </div>
</td><td>
  <img src="icons/cart.png" >
</td><td>
  <img src="icons/login.png" >
</td></tr>
</table>
  <table width="100%">
    <tr style="font-size: 40px;"><td align="center"><%=tit.gettitle0("_insuranceonline")%></td></tr>
    <tr style="font-size: 25px;"><td align="center"><%=tit.gettitle0("_getproduct")%></td></tr>
  </table>
  <div class="left">
    left div
    <button id="left-button">
      swipe left
    </button>
  </div>
  <table class="fixtab" width="100%">
    <tr style="font-size: 18px;">
      <td class="fixtd">
        <img class="imgbtn" src="icons/car.png" onmouseover="this.src='icons/car_mouse_over.png';" onmouseout="this.src='icons/car.png';">
        </td>
      <td class="fixtd">
        <img class="imgbtn" src="icons/liability.png" onmouseover="this.src='icons/liability_mouse_over.png';" onmouseout="this.src='icons/liability.png';">
        </td>
      <td class="fixtd">
        <img class="imgbtn" src="icons/greencard.png" onmouseover="this.src='icons/greencard_mouse_over.png';" onmouseout="this.src='icons/greencard.png';">
        </td>
      <td class="fixtd">
        <img class="imgbtn" src="icons/travel.png" onmouseover="this.src='icons/travel_mouse_over.png';" onmouseout="this.src='icons/travel.png';">
        </td>
      <td class="fixtd">
        <img class="imgbtn" src="icons/property.png" onmouseover="this.src='icons/property_mouse_over.png';" onmouseout="this.src='icons/property.png';">
        </td>
      <td class="fixtd">
        <img class="imgbtn" src="icons/health.png" onmouseover="this.src='icons/health_mouse_over.png';" onmouseout="this.src='icons/health.png';">
        </td>
    </tr>
    <tr style="font-size: 18px;">
      <td class="fixtd"><%=tit.gettitle0("_car")%></td>
      <td class="fixtd"><%=tit.gettitle0("_liability")%></td>
      <td class="fixtd"><%=tit.gettitle0("_greencard")%></td>
      <td class="fixtd"><%=tit.gettitle0("_travel")%></td>
      <td class="fixtd"><%=tit.gettitle0("_property")%></td>
      <td class="fixtd"><%=tit.gettitle0("_health")%></td>
    </tr>
  </table>
  <img class="imgbottom" src="icons/chat.png">
</form>
</body>
</html>

