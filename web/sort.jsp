<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 7/5/19
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<style>
    .box {
        background: red;
        width: 200px;
    }
</style>

<div class="wrap">
    <button id="alphBnt">Alphabetical</button>
    <button id="numBnt">Numerical</button>
    <button id="xxbtn">xx</button>
    <div id="container">
        <div class="box" xx="11">
            <h1>B</h1>11
                <h2>10.35</h2>
        </div>

        <div class="box" xx="5">
            <h1>A</h1>5
                <h2>100.05</h2>
        </div>

        <div class="box" xx="2">
            <h1>D</h1>2
                <h2>55</h2>
        </div>

        <div class="box" xx="1">
            <h1>C</h1>1
                <h2>5,510.25</h2>
        </div>
    </div>
</div>

<script>
    var $divs = $("div.box");

    $('#alphBnt').on('click', function () {
        var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find("h1").text() > $(b).find("h1").text()? 1 : -1;
        });
        $("#container").html(alphabeticallyOrderedDivs);
    });

    $('#numBnt').on('click', function () {
        var numericallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find("h2").text() > $(b).find("h2").text()? 1 : -1;
        });
        $("#container").html(numericallyOrderedDivs);
    });
    //parseInt parseFloat()
        $('#xxbtn').on('click', function () {
        var numericallyOrderedDivs1 = $divs.sort(function (a, b) {

            return parseInt($(a).attr("xx")) > parseInt($(b).attr("xx"))? 1 : -1;
        });
        $("#container").html(numericallyOrderedDivs1);
    });
</script>

</body>
</html>
