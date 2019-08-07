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
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Title</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="css/mycss.css" rel="stylesheet">



</head>
<body  onresize="onresize()">
<%
    System.out.println("11111111111111111");
    //mypack.titles.reloadlang();
    mypack.titles tit=new mypack.titles();
    bb.printvars(request);
    String lang=request.getParameter("lang");

    if (lang!=null){

        if (lang.equals("ru")) {tit.langid=1;tit.langname="<img src='icons/ru.jpg'/><div class='langtxt'>&nbsp;русский</div>";}
        else if (lang.equals("en")) {tit.langid=2;tit.langname="<img src='icons/en.jpg'/><div class='langtxt'>&nbsp;english</div>";}
        else {tit.langid=0;tit.langname="<img src='icons/ge.jpg'/><div class='langtxt'>&nbsp;ქართული</div>";}

    }
%>
<form  action='' method="post" name='my_table' id='my_table'>
    <input type=hidden name=buttonclick id="buttonclick">
    <input type=hidden name=buttonparam id="buttonparam">
    <!--input type="button" id="but3" value="but3" onclick="mybuttonclick('par1','par2')"/-->
</form>
<div style="height: 20px;"></div>
<table width="100%">
    <tr><td style="width: 35%;text-align: left">
        <div class="dropdown">
            <button class="dropbtn">&#9776;</button>
            <div class="dropdown-content">
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
            </div>
        </div>
    </td>

        <td width="30%" style="text-align: center">
            <img style="width: 100%;max-width:176px" src="icons/logo.png"/>
        </td>

        <td style="width: 35%;text-align: right;vertical-align: middle;">

            <div class="dropdown">
                <button class="langbtn"><%=tit.langname%></button>
                <div class="dropdown-content" style="min-width: 150px;text-align: left;">
                    <a onclick="window.location.href='?lang=ge'"><img src='icons/ge.jpg'/><div class='langtxt'>ქართული</div></a>
                    <a onclick="window.location.href='?lang=en'"><img src='icons/en.jpg'/><div class='langtxt'>english</div></a>
                    <a onclick="window.location.href='?lang=ru'"><img src='icons/ru.jpg'/><div class='langtxt'>русский</div></a>
                </div>
            </div>

            <ul class="rightmenu">

                <li>

                    <a class='menuhead' href="#" title="Get in touch with us">Contact</a>
                    <ul>
                        <li style="padding: 5px">Ou adrts</li>
                        <li><a href="#">Out-of-hours</a></li>
                        <li><a href="#">Directions</a></li>
                    </ul>
                </li>
            </ul>
        </td></tr>
</table>

<table height="35%" width="100%">
    <tr><td height="70px"></td></tr>
    <tr><td style="font-size: 40pt;" align="center"><%=tit.gettitle0("_insuranceonline")%></td></tr>
    <tr><td height="20px"></td></tr>
    <tr><td style="font-size: 18pt;" align="center"><%=tit.gettitle0("_getproduct")%></td></tr>
    <tr><td height="70px"></td></tr>
</table>

<div class="pn-ProductNav_Wrapper">
    <nav id="pnProductNav" class="pn-ProductNav">
        <table id="pnProductNavContents" class="fixtab" width="100%">
            <tr style="font-size: 18pt;" >
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
            <tr style="font-size: 18pt;">
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_car")%></a></td>
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_liability")%></a></td>
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_greencard")%></a></td>
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_travel")%></a></td>
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_property")%></a></td>
                <td class="fixtd"><a href="" style="text-decoration: none;"><%=tit.gettitle0("_health")%></a></td>
            </tr>
        </table>

    </nav>
    <button id="pnAdvancerLeft" class="pn-Advancer pn-Advancer_Left" type="button">
        <svg class="pn-Advancer_Icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 551 1024"><path d="M445.44 38.183L-2.53 512l447.97 473.817 85.857-81.173-409.6-433.23v81.172l409.6-433.23L445.44 38.18z"/></svg>
    </button>
    <button id="pnAdvancerRight" class="pn-Advancer pn-Advancer_Right" type="button">
        <svg class="pn-Advancer_Icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 551 1024"><path d="M105.56 985.817L553.53 512 105.56 38.183l-85.857 81.173 409.6 433.23v-81.172l-409.6 433.23 85.856 81.174z"/></svg>
    </button>
</div>

<table height="45%" width="100%"><tr><td style="text-align: center">
    <img  style="width: 100%;max-width:1034px" src="icons/footpic.jpg" />
</td>
</tr>
</table>

<div style="background-color: #262626;font-size: 17pt;color: white;padding:65px 50px 50px 50px;">
    <div style="width:60%;float: left;">
        <table style="width: 50%;color: white;float: left;">
            <tr style="font-size: 18pt;font-weight: bold;"><td><%=tit.gettitle0("_main")%></td>
            </tr><tr><td height="25px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_about")%></a></td>
            </tr><tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_insurance")%></a></td>
            </tr><tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_partner")%></a></td>
            </tr><tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_travel")%></a></td></tr>
            <tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_property")%></a></td></tr>
            <tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;"><td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_health")%></a></td></tr>

        </table>
        <table style="width: 50%;color: white;float: left;">
            <tr style="font-size: 18pt;font-weight: bold;">
                <td><%=tit.gettitle0("_prodakts")%></td></tr><td height="25px"></td></tr>
            <tr style="font-size: 17pt;">
                <td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_car")%></a></td></tr><tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;">
                <td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_liability")%></a></td></tr><tr><td height="20px"></td></tr>
            <tr style="font-size: 17pt;">
                <td><a href="" style="text-decoration: none;color:white;"><%=tit.gettitle0("_greencard")%></a></td></tr>


        </table>
    </div>
    <table style="width: 40%;color: white;">
        <tr style="font-size: 18pt;font-weight: bold;"><td><%=tit.gettitle0("_download")%></td></tr><tr><td height="25px"></td></tr>
        <tr><td>

            <div class="onerow2"><img src="icons/apple.jpg"/></div>
            <div class="onerow2"><img src="icons/google.jpg"/></div>

        </td></tr>
        <tr><td height="84px"></td></tr>
        <tr style="font-size: 18pt;font-weight: bold;"><td><%=tit.gettitle0("_connect")%></td></tr>
        <tr><td height="25px"></td></tr>
        <tr><td>

            <div class="onerow5"><img src="icons/social1.jpg"/></div>
            <div class="onerow5"><img src="icons/social2.jpg"/></div>
            <div class="onerow5"><img src="icons/social3.jpg"/></div>
            <div class="onerow5"><img src="icons/social4.jpg"/></div>
            <div class="onerow5"><img src="icons/social5.jpg"/></div>


        </td></tr>

    </table>
    <div style="height: 50px;"></div>


    <table style="width: 100%;color: white;text-align: center;">
        <td><td>
        <div style="width: 60%;font-size: 17pt;float: left;"><%=tit.gettitle0("_foot1txt")%></div>
        <div style="width: 40%;font-size: 18pt;font-weight: bold;float: left;min-width: 200px;"><br><%=tit.gettitle0("_foot2txt")%></div>
    </td></tr>
    </table>

</div>

<script type="text/javascript" src="js/myjs.js"></script>

<!-- ====================user=====chat============================================================== -->
<link href="css/convo.css" rel="stylesheet" type="text/css" />
<script src="js/convo.js" type="text/javascript"></script>
<script type="text/javascript" src="js/myjsuser.js"></script>
<img class="imgbottom" id="imgbottom" src="icons/chat.png" onclick="chatda()"/>
<!-- =============================================================================================== -->

<!--/form-->


</body>
</html>

