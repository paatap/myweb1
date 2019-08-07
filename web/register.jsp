<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 4/23/19
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Title</title>
    <link href="css/mycss.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/datepicker-ru.js"></script>


</head>
<body style="background-color: #262626;">
<style>
    * {
        box-sizing: border-box;
    }

    body {
        background-color: #f1f1f1;
    }

    #regForm {
        background-color: #ffffff;
        margin: 20px auto;
        font-family: Raleway;
        padding: 40px;
        width: 70%;
        min-width: 300px;
    }

    h1 {
        text-align: center;
    }

    input {
        padding: 10px;
        width: 100%;
        font-size: 17px;
        font-family: Raleway;
        border: 1px solid #aaaaaa;
    }

    /* Mark input boxes that gets an error on validation: */
    input.invalid {
        background-color: #ffdddd;
    }

    /* Hide all steps by default: */
    .tab {
        display: none;
    }

    button {
        background-color: blue;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        font-size: 17px;
        font-family: Raleway;
        cursor: pointer;
    }

    button:hover {
        opacity: 0.8;
    }

    #prevBtn {
        background-color: #bbbbbb;
    }

    /* Make circles that indicate the steps of the form: */
    .step {
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbbbbb;
        border: none;
        border-radius: 50%;
        display: inline-block;
        opacity: 0.5;
    }

    .step.active {
        opacity: 1;
    }

    /* Mark the steps that are finished and valid: */
    .step.finish {
        background-color: blue;
    }
</style>
<%
    mypack.titles tit = new mypack.titles();


    Object o = request.getSession().getAttribute("lang");

    if (o != null) {
        String lang = o.toString();
        if (lang.equals("ru")) {
            tit.langid = 1;

        } else if (lang.equals("en")) {
            tit.langid = 2;

        } else {
            tit.langid = 0;

        }

    }

%>



<form  action='' method="post" name='regForm' id='regForm'>
    <input type=hidden name=buttonclick id="buttonclick"/>
    <input type=hidden name=buttonparam id="buttonparam"/>
    <div class="tab">
        <img class="imgtop" id="imgtop" src="icons/closewindowsmall.png" onclick="window.location.href='index.jsp'"/>
        <table style="background-color: white;width:100%;min-width: 300px;margin: auto;text-align: center;">
            <tr>
                <td><img src="icons/smalllogo.png"/></td>
            </tr>
            <tr>
                <td style="font-size: 22pt;"><%=tit.gettitle0("_register")%>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_namefirst")%>
                        </legend>
                        <input class="myinput" oninput="this.className = 'myinput'" placeholder="<%=tit.gettitle0("_namefirst")%>" name="namefirst"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_namelast")%>
                        </legend>
                        <input class="myinput" oninput="this.className = 'myinput'" placeholder="<%=tit.gettitle0("_namelast")%>" name="namelast"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_personal_n")%>
                        </legend>
                        <input class="myinput" oninput="this.className = 'myinput'" placeholder="<%=tit.gettitle0("_personal_n")%>" name="personal_n"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_birthday")%>
                        </legend>
                        <p style="margin:0;"><input style="width: calc(100% - 40px);    float: left; font-size: 17pt;"
                                                    oninput="this.style = 'width: calc(100% - 40px);    float: left; font-size: 17pt;'"
                                                    type="text" id="datepicker" placeholder="<%=tit.gettitle0("_birthday")%>" name="birthday"/></p>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_gender")%>
                        </legend>
                        <select name="gender" id="gender" style="width: 100%;font-size: 17pt;">
                            <option disabled selected value> -- <%=tit.gettitle0("_selectanoption")%> --</option>
                            <option><%=tit.gettitle0("_male")%>
                            </option>
                            <option><%=tit.gettitle0("_female")%>
                            </option>
                        </select>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_email")%>
                        </legend>
                        <input class="myinput" oninput="this.className = 'myinput'" placeholder="<%=tit.gettitle0("_email")%>" name="email"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_phone")%>
                        </legend>
                        <input class="myinput" oninput="this.className = 'myinput'" placeholder="<%=tit.gettitle0("_phone")%>" name="phone"/>
                    </fieldset>
                </td>
            </tr>
            <!--tr>
                <td style="text-align: right;">
                    <input type="button" style="background-color: blue;color: white;width: 200px;height:50px;"
                           value="<%=tit.gettitle0("_register")%>">
                </td>
            </tr-->
        </table>
    </div>


    <div class="tab">
        <table style="background-color: white;width:100%;min-width: 300px;margin: auto;text-align: center;">
            <tr>
                <td><img src="icons/smalllogo.png"/></td>
            </tr>
            <tr>
                <td style="font-size: 22pt;"><%=tit.gettitle0("_register")%>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_username")%>
                        </legend>
                        <input placeholder="Username..." class="myinput" oninput="this.className = 'myinput'" name="uname"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_password")%>
                        </legend>
                        <input placeholder="Password..." class="myinput" oninput="this.className = 'myinput'" name="pword" id="pword" type="password"/>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <fieldset>
                        <legend class="leftlegend"><%=tit.gettitle0("_password2")%>
                        </legend>
                        <input placeholder="re Password..." oninput="this.className = ''" name="pword2" id="pword2" type="password">
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td style="text-align: left;">

                        <label for="checkbox-1"><%=tit.gettitle0("_applyrules")%></label>
                        <input type="checkbox" name="checkbox-1" id="checkbox-1"/>

                </td>
            </tr>
        </table>
    </div>


    <div class="tab">
        <table style="background-color: white;width:100%;min-width: 300px;margin: auto;text-align: center;">
            <tr>
                <td><img src="icons/smalllogo.png"/></td>
            </tr>
            <tr>
                <td style="font-size: 22pt;"><%=tit.gettitle0("_register")%>
                </td>
            </tr>
            <tr>
                <td style="height: 50px;">
                </td>
            </tr>
            <tr>
                <td style="font-size: 17pt;text-align: left">
                    <%=tit.gettitle0("_checkmail")%>
                    <br><br>
                    <%=tit.gettitle0("_notmail")%>
                </td>
            </tr>
        </table>
    </div>


    <div style="overflow:auto;">
        <div style="float:right;">
            <button type="button" id="prevBtn" onclick="nextPrev(-1)"><%=tit.gettitle0("_previous")%></button>
            <button type="button" id="nextBtn" onclick="nextPrev(1)"><%=tit.gettitle0("_next")%></button>
        </div>
    </div>
    <div style="text-align:center;margin-top:40px;">
        <span class="step"></span>
        <span class="step"></span>
        <span class="step"></span>
    </div>
</form>

<script>
    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab

    function showTab(n) {
        // This function will display the specified tab of the form...
        var x = document.getElementsByClassName("tab");
        x[n].style.display = "block";
        //... and fix the Previous/Next buttons:
        if (n == 0||n == (x.length - 1)) {
            document.getElementById("prevBtn").style.display = "none";
        } else {
            document.getElementById("prevBtn").style.display = "inline";
        }
        if (n == (x.length - 2)) {
            document.getElementById("nextBtn").innerHTML = "<%=tit.gettitle0("_register")%>";
        } else if (n == (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "<%=tit.gettitle0("_ok")%>";
        }else{
            document.getElementById("nextBtn").innerHTML = "<%=tit.gettitle0("_next")%>";
        }
        //... and run a function that will display the correct step indicator:
        fixStepIndicator(n)
    }

    function nextPrev(n) {
        var x = document.getElementsByClassName("tab");
        if (n==1&&currentTab == (x.length - 1)) {
            window.location.href="index.jsp";return;
        }

        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;

        if (n==1&&currentTab == (x.length - 2)) {
            kuku22();return;
        }

        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        if (n>0) currentTab = currentTab + 1;
        else currentTab = currentTab - 1;
        // if you have reached the end of the form...
        if (currentTab >= x.length) {
            // ... the form gets submitted:
            document.getElementById("regForm").submit();
            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, valid = true;
        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false
                valid = false;
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class on the current step:
        x[n].className += " active";
    }
    function mydelete(thisArray, thisName) {
        //"use strict";
        $.each(thisArray, function(index, item) {
            if (item.name == thisName) {
                //delete thisArray[index];
                item.value="nono";
            }
        });
    }
    function kuku22() {

        //var params = {};
        var params = $('#regForm').serializeArray();
        //params.attribute("abababa","myattr123456788990");
        //params.attribute("","");
        params.push({name: 'abxabcabc', value: "asasasasasasasasas"});
var el=$('#pword');
        var el2=$('pword');
        var el3=$('.pword');
        var ppp=$('#pword').val();
        //params.push({name: 'pword', value: "nonono"});
        mydelete(params,"pword");
        params.push({name: 'password', value: ppp+"=kuku"});

        $.ajax({
            type: "POST",
            url: "getdata.jsp",
            cache: false,
            data: params,
            dataType: 'html',
            success: function (response) {
                if (response.status === 'OK') {
                    alert("postkuku"+response);nextPrev(2);
                    //window.location.href = "/"; //window.location.href;
                }else{
                    alert("postkuku2222222=="+response);nextPrev(2);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
        });
/*
        var request = $.ajax({
            url: "getdata.jsp",
            method: "POST",
            data: params,
            dataType: "html"
            //,context: document.body
        });
        request.done(function( msg ) {
            $( "#log" ).html( msg );
            alert(msg);
        });

        request.fail(function( jqXHR, textStatus ) {
            alert( "Request failed: " + textStatus );
        });
        */
    }
</script>

</body>
</html>
