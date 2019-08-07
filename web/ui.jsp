<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 4/12/19
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery ui</title>
    <!--link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"-->
    <link href="css/themes/blue/jquery-ui.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/datepicker-ru.js"></script>
    <style>
        #resizable { width: 150px; height: 150px; padding: 0.5em; }
        #resizable h3 { text-align: center; margin: 0; }
    </style>
    <script>
        $( function() {
            $( "#resizable" ).draggable();
        } );
        $( function() {
            $( "#resizable" ).resizable();
        } );
        $( function() {
            $( "#dialog" ).dialog();
        } );
        $( function() {
            //$( "#datepicker" ).datepicker( $.datepicker.regional[ "ru" ] );
            $( "#datepicker" ).datepicker({
                showOn: "button",
                buttonImage: "images/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date"
            });
            $( "#locale" ).on( "change", function() {
                $( "#datepicker" ).datepicker( "option",
                    $.datepicker.regional[ $( this ).val() ] );
            });
            $( "#format" ).on( "change", function() {
                $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
            });
        } );
    </script>
</head>
<body>



<div id="resizable" class="ui-widget-content">
    <h3 class="ui-widget-header">Resizable/Drag</h3>
</div>

<div id="dialog" title="Basic dialog">
    <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
<p>Date: <input type="text" id="datepicker">&nbsp;
    <select id="locale">
        <option value="ru">ru (&#8235;(&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;</option>

        <option value="">English</option>

    </select>
    <br>
    Format options:<br>
    <select id="format">
        <option value="mm/dd/yy">Default - mm/dd/yy</option>
        <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
        <option value="d M, y">Short - d M, y</option>
        <option value="d MM, y">Medium - d MM, y</option>
        <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
        <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - 'day' d 'of' MM 'in the year' yy</option>
    </select>
</p>
</body>
</html>
