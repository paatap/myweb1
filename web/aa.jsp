<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/28/19
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>




<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="css/aacss.css" rel="stylesheet">
    <script type="text/javascript" src="js/aajs.js"></script>
    <meta name="google-signin-scope" content="sarchilg@gmail.com">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>





<!-- MultiStep Form-->
<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
<script>
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
    }
</script>


<!--

    <div class="assessment-container container">
        <div class="row">
            <div >
            -->

<div class="row">
        <form id="msform">

            <ul id="progressbar">
                <li class="active">Personal Details</li>
                <li>Social Profiles</li>
                <li>Account Setup</li>
            </ul>

            <fieldset>
                <h2 class="fs-title">Personal Details</h2>
                <h3 class="fs-subtitle">Tell us something more about you</h3>
                <table width="100%"><tr><td>
                    <input type="button" name="previous" class="previous action-button" value="<<" disabled/>
                </td><td>
                <input type="text" name="fname" placeholder="First Name"/>
                <input type="text" name="lname" placeholder="Last Name"/>
                <input type="text" name="phone" placeholder="Phone"/>
                </td><td>
                    <input type="button" name="next" class="next action-button" value=">>"/>
                </td>
                </tr>
                </table>
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Social Profiles</h2>
                <h3 class="fs-subtitle">Your presence on the social network</h3>
                <table width="100%"><tr><td>
                    <input type="button" name="previous" class="previous action-button" value="<<"/>
                </td><td>
                <input type="text" name="twitter" placeholder="Twitter"/>
                <input type="text" name="facebook" placeholder="Facebook"/>
                <input type="text" name="gplus" placeholder="Google Plus"/>
                </td><td>

                <input type="button" name="next" class="next action-button" value=">>"/>
                </td>
                </tr>
                </table>
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Create your account</h2>
                <h3 class="fs-subtitle">Fill in your credentials</h3>
                <table width="100%"><tr><td>
                    <input type="button" name="previous" class="previous action-button" value="<<"/>
                </td><td>
                <input type="text" name="email" placeholder="Email"/>
                <input type="password" name="pass" placeholder="Password"/>
                <input type="password" name="cpass" placeholder="Confirm Password"/>
                </td><td>

                    <input type="button" name="next" class="next action-button" value=">>" disabled/>
                </td>
                </tr>
                </table>
                <input type="submit" name="submit" class="submit action-button-submit" value="Submit"/>
            </fieldset>
        </form>
</div>


<%

    String wname= new File(request.getServletContext().getRealPath("/")).getName();
    System.out.println("redirect===="+wname+"=="+request.getQueryString());
    System.out.println(request.getRemoteUser()+"="+request.getContentType());

    Enumeration ee=request.getHeaderNames();
    while (ee.hasMoreElements())
    {
        String ss=(String) ee.nextElement();
        String s2=request.getHeader(ss);
        System.out.println("h---"+ss+"--"+s2);
    }
    ee=request.getParameterNames();
    String sdop="";
    while (ee.hasMoreElements())
    {
        String ss=(String) ee.nextElement();
        String s2=request.getParameter(ss);
        sdop+=ss+"="+s2+"&";//"&amp;";
        System.out.println("p---"+ss+"--"+s2);
    }
    if (!sdop.equals(""))sdop="?"+sdop;
    System.out.println(sdop);

%>
<!--
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-sm-3">


                    <input name="aa11" type="button" with="100%" value="bb11"/>

        </div>
        <div class="col-lg-9 col-sm-9">

            <div class="col-lg-6 col-sm-6">

                <div class="well">
                    <input  name="aa22" type="button" with="100%"/>
                </div>
            </div>

            <div class="col-lg-6 col-sm-6">

                <div class="well">
                    <input  name="aa33" type="button" with="100%"/>
                </div>
            </div>

        </div>
    </div>
</div>
-->
<!--
<div class="container">
    <div class="page-header">
        <h1>Bootstrap grid examples</h1>
        <p class="lead">Basic grid layouts to get you familiar with building within the Bootstrap grid system.</p>
    </div>

    <h3>Three equal columns</h3>
    <p>Get three equal-width columns <strong>starting at desktops and scaling to large desktops</strong>. On mobile devices, tablets and below, the columns will automatically stack.</p>

    <div class="row">
        <div class="col-lg-3 col-sm-3">
            <div class="well">
            </div>

        </div>
        <div class="col-lg-3 col-sm-3">
            <div class="well">
            </div>

        </div>
        <div class="col-lg-3 col-sm-3">
            <div class="well"> </div>

        </div>
    </div>
    <div class="row">
    <div class="col-md-3 hidden-sm"><div class="well">.col-md-3 1</div></div>
    <div class="col-md-3"><div class="well">.col-md-3 2</div></div>
    <div class="col-md-3"><div class="well">.col-md-3 3</div></div>
</div>

</div>
-->
<!-- /.MultiStep Form -->
</body>
</html>
