<!--=============================================footer================================================-->
<div style="background-color: #262626;width: 100%;">
    <div class="container-fluid container1200">
        <div class="row" style="font-size: 14px;color: white;">

            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="colorgr" style="font-weight: bold;margin-top: 45px;height:46px;">
                    <%=tit.gettitle0("_main")%>
                </div>



                <div style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','about')"><%=tit.gettitle0("_about")%>
                    </a>
                </div>



                <div style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','index')"><%=tit.gettitle0("_insurance")%>
                    </a>
                </div>



                <div style="height:46px;">
                    <a href="" style="color:white;"><%=tit.gettitle0("_dopartner")%>
                    </a>
                </div>




                <div style="margin-bottom: 60px;">
                    <a href="" style="color:white;"><%=tit.gettitle0("_contact")%>
                    </a>
                </div>

            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="colorgr mybig" style="font-weight: bold;margin-top: 45px;height:46px;">
                    <%=tit.gettitle0("_prodakts")%>

                </div>


                <div class="mybig" style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','car')"><%=tit.gettitle0("_car")%>
                    </a>
                </div>


                <div class="mybig" style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','liability')"><%=tit.gettitle0("_liability")%>
                    </a>
                </div>


                <div class="mybig" style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','greencard')"><%=tit.gettitle0("_greencard")%>
                    </a>
                </div>

                <div class="mybig" style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','travel')"><%=tit.gettitle0("_travel")%>
                    </a>
                </div>



                <div class="mybig" style="height:46px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','property')"><%=tit.gettitle0("_property")%>
                    </a>
                </div>



                <div class="mybig" style="margin-bottom: 60px;">
                    <a href="#" style="color:white;" onclick="mypost('jsptype','health')"><%=tit.gettitle0("_health")%>
                    </a>
                </div>

            </div>
            <div class="col-lg-1 col-sm-0" style="color: white;">
            </div>

            <div class="col-lg-5 col-sm-12" style="color: white;">
                <div class="colorgr" style="font-weight: bold;margin-top: 45px;height:46px;">
                    <%=tit.gettitle0("_download")%>

                </div>




                <div class="row">

                    <div class="col-sm-6" style="margin-bottom: 15px;"><input class="btn mybtn" style="background-image: url(icons/applestore.svg);width: 100%;height:56px;"/></div>
                    <div class="col-sm-6" style="margin-bottom: 15px;"><input class="btn mybtn" style="background-image: url(icons/googleplay.svg);width: 100%;height:56px;"/></div>

                </div>



                <div class="colorgr" style="font-weight: bold;margin-top: 45px;margin-bottom: 22px;">
                    <%=tit.gettitle0("_connect")%>

                </div>


                <div class="row" style="margin-bottom: 50px;">

                    <div class="col-12">
                        <div style="    display: flex;    justify-content:space-between;">
                            <div  ><input class="btn mybtn mysocialbtn" style="background-image: url(icons/facebook.svg);"/></div>
                            <div  ><input class="btn mybtn mysocialbtn" style="background-image: url(icons/instagram.svg);"/></div>
                            <div  ><input class="btn mybtn mysocialbtn" style="background-image: url(icons/linkedin.svg);"/></div>
                            <div  ><input class="btn mybtn mysocialbtn" style="background-image: url(icons/twitter.svg);"/></div>
                            <div  ><input class="btn mybtn mysocialbtn" style="background-image: url(icons/youtube.svg);"/></div>
                        </div>
                    </div>

                </div>

            </div>



        </div>
        <div class="row mybig colorgr" style="font-size: 14px;padding-bottom: 20px;">
            <div class="col-sm-6">
                <%=tit.gettitle0("_foot1txt")%>
            </div>
            <div class="col-sm-6" style="text-align: right;margin: auto;">
                <%=tit.gettitle0("_foot2txt")%>
            </div>
        </div>
        <div class="row mysmall colorgr" style="padding-bottom: 20px;text-align: center;">
            <div class="col-sm-12">
                <%=tit.gettitle0("_foot1txt")%>
            </div>
        </div>
        <div class="row mysmall colorgr" style="padding-bottom: 20px;text-align: center;">
            <div class="col-sm-12">
                <%=tit.gettitle0("_foot2txt")%>
            </div>
        </div>
    </div>
</div>
<!-- pointer-events: none; -->
<div class="container1200" style="height:0px;width:100%;position: fixed;bottom: 0px;padding-right: 15px; padding-left: 15px;text-align: right;left: 50%;transform: translateX(-50%);">

    <label id="tablo" style="background-color: white;transform: translateY(-62px);"></label>
    <img class="btn imgbottom" id="imgbottom" style="transform: translateY(-62px);" src="icons/chat.svg" onclick="chatda()"/>

</div>


<input class="btn"   value="[]" onclick="borderda()"/>
<input class="btn"   value="pass" onclick="$('#mypass').modal({backdrop: 'static'});"/>

<!-- =============================================================================================================================================-->
<!-- message -->
<div class="modal fade2" id="mymessage" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">
                <img src="icons/message.svg" style="    margin: auto;display: block;">
                <div class="colorbl header24" style="margin-bottom: 45px;">
                    <%=tit.gettitle0("_message")%></div>
                <div class="transformy-5" id="mymessagetxt"></div>
                <button type="button" class="btn btn-block mybtn2" data-dismiss="modal"><%=tit.gettitle0("_close")%></button>
            </div>
        </div>
    </div>
</div>
<!-- error -->
<div class="modal fade2" id="myerror" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">
                <img src="icons/error.svg" style="    margin: auto;display: block;">
                <div class="colorred header24" style="margin-bottom: 45px">
                    <%=tit.gettitle0("_error")%></div>
                <div class="transformy-5" id="myerrortxt"></div>
                <button type="button" class="btn btn-block mybtn2" data-dismiss="modal"><%=tit.gettitle0("_close")%></button>
            </div>
        </div>
    </div>
</div>
<!-- =============================================================================================================================================-->
<!-- login -->

<div class="modal fade2" id="mylogin" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">

        <!-- Modal content-->
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">


                <div class="colorbl header24" style="margin-bottom: 45px;">
                    <div class="transformy-5"><%=tit.gettitle0("_login")%></div></div>

                <form  action='' method='post' id='myloginform' role="form" style="    margin-block-end: 0px;">

                    <div>
                        <div class="leftlegend" id="usrnamelegend" ><%=tit.gettitle0("_email")%></div>
                        <input class="myinput" style="height:44px;margin-bottom: 20px" type="text" id="usrname" name="usrname" placeholder="<%=tit.gettitle0("_email")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="pswlegend" ><%=tit.gettitle0("_password")%></div>
                        <div style="    position: relative;    height: 0px;    width: 100%;    text-align: right;transform: translateY(7px) ;padding-right: 10px;">
                            <a onclick="modal2modal('#mylogin','#mypasswordre')" href="#"><%=tit.gettitle0("_forgot")%></a></div>
                        <input  type="password" class="myinput" style="height:44px;margin-bottom: 20px" id="psw"  placeholder="<%=tit.gettitle0("_password")%>">
                    </div>
                    <div  style="height:16px;margin-bottom: 45px" >
                        <label class="checkbox-inline" style="width:100%;">
                            <input type="checkbox" class="mycheckbox" value="" checked name="rememberme">
                            <div style="transform: translateY(-4px);"><%=tit.gettitle0("_rememberme")%></div></label>
                    </div>
                </form>
                <button name="login" onclick="mysubmit('myloginform','#psw','mylogin')" class="btn btn-block mybtn2"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_login")%></button>



                <div style="text-align: center;font-size: 14px;height: 17px;margin-bottom: 45px;">
                    <div class="transformy-2"><%=tit.gettitle0("_notuser")%>
                        <a onclick="modal2modal('#mylogin','#myregister')" href="#"><%=tit.gettitle0("_register")%></a></div>
                </div>

            </div>

        </div>

    </div>
</div>
<!-- =============================================================================================================================================-->
<!-- register -->

<div class="modal fade2"  id="myregister" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">

        <!-- Modal content-->
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">


                <div class="colorbl header24" style="margin-bottom: 45px;">
                    <div class="transformy-5"><%=tit.gettitle0("_register")%></div></div>

                <form  action='' method='post' id='myregisterform' role="form" style="    margin-block-end: 0px;">
                    <div>
                        <div class="leftlegend" id="namefirstlegend" name="namefirstlegend"><%=tit.gettitle0("_namefirst")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="namefirst" name="namefirst" placeholder="<%=tit.gettitle0("_namefirst")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="namelastlegend" ><%=tit.gettitle0("_namelast")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="namelast" name="namelast" placeholder="<%=tit.gettitle0("_namelast")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="namefirstlatlegend" name="namefirstlatlegend"><%=tit.gettitle0("_namefirstlat")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="namefirstlat" name="namefirstlat" placeholder="<%=tit.gettitle0("_namefirstlat")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="namelastlatlegend" ><%=tit.gettitle0("_namelastlat")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="namelastlat" name="namelastlat" placeholder="<%=tit.gettitle0("_namelastlat")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="personal_nlegend" ><%=tit.gettitle0("_personal_n")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="personal_n" name="personal_n" placeholder="<%=tit.gettitle0("_personal_n")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="birthdaylegend" ><%=tit.gettitle0("_birthday")%></div>
                        <input type="text" class="myinput mydatepicker" style="height:44px;margin-bottom: 20px" id="birthday" name="birthday" placeholder="<%=tit.gettitle0("_birthday")%>" data-select="datepicker">
                    </div>
                    <div style="height:16px;margin-bottom: 20px" id="gender">
                        <div>
                            <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="gender" value="male">
                                <div style="transform: translateY(-4px);"><%=tit.gettitle0("_male")%></div></label>
                            <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="gender" value="female">
                                <div style="transform: translateY(-4px);"><%=tit.gettitle0("_female")%></div></label>
                        </div>
                    </div>
                    <div style="margin-bottom: 20px">
                        <div class="leftlegend" id="phonelegend" style="z-index: 1;"><%=tit.gettitle0("_phone")%></div>
                        <input type="tel"  class="myinput myphone" style="height:44px;" id="phone" name="phone" placeholder="<%=tit.gettitle0("_phone")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="emaillegend" ><%=tit.gettitle0("_email")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="email" name="email" placeholder="<%=tit.gettitle0("_email")%>">
                    </div>
                    <div style="margin-bottom: 45px;height:16px;"  id="checkboxrule">
                        <label class="checkbox-inline" style="width:100%;"><input type="checkbox" class="mycheckbox" name="checkboxrule">
                            <div style="transform: translateY(-4px);"><%=tit.gettitle0("_applyrules")%></div></label>
                    </div>
                </form>

                <button onclick="mysubmit('myregisterform','','myregister')" class="btn btn-block mybtn2"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_register")%></button>


                <div style="text-align: center;font-size: 14px;height: 18px;margin-bottom: 45px;"><%=tit.gettitle0("_isuser")%><a style="padding-left: 10px;" onclick="modal2modal('#myregister','#mylogin')" href="#"><%=tit.gettitle0("_login2")%></a></div>


            </div>

        </div>

    </div>
</div>


<!-- =============================================================================================================================================-->
<!-- mypass2mail -->

<div class="modal fade2" id="mypasswordre" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">

        <!-- Modal content-->
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">


                <div class="colorbl header24" style="margin-bottom: 45px;">
                    <div class="transformy-5"><%=tit.gettitle0("_passwordre")%></div></div>

                <form   action='' method='post' id='mypasswordreform'  role="form" style="    margin-block-end: 0px;">
                    <div>
                        <div class="leftlegend" id="usrname2legend" ><%=tit.gettitle0("_email")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="usrname2" name='user' placeholder="<%=tit.gettitle0("_email")%>">
                    </div>

                    <div style="display: flex; align-items: center;font-size: 14px;text-align:center;margin-bottom: 46px;height:67px;background-color: #EFF3F7"><div style="margin: auto;"><%=tit.gettitle0("_emailcheck")%></div></div>
                </form>
                <button style="margin-bottom: 45px;" onclick="mysubmitajax('mypasswordreform','','mypasswordre','')" class="btn  btn-block mybtn2"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_passwordre")%></button>




            </div>

        </div>

    </div>
</div>
<!-- =============================================================================================================================================-->
<!-- pass -->

<div class="modal fade2" id="mypass" role="dialog">
    <div class="modal-dialog" style="max-width: 432px">

        <!-- Modal content-->
        <div class="modal-content" style="font-size: 16px;">
            <div >
                <button type="button" class="close" style="    height: 30px;  width: 30px;  background-color: #232A2F;  color: white;" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body" style="padding:0px 30px;margin-top: 8px;">


                <div class="colorbl header24">
                    <div class="transformy-5"><%=tit.gettitle0("_mypassword")%></div></div>
                <div class="colorbl header14">
                    <div id='putpassword' class="transformy-1"><%=tit.gettitle0("_putpassword")%></div></div>

                <form  action='' method='post' id='mypassform' role="form" style="    margin-block-end: 0px;">

                    <div>
                        <div class="leftlegend" id="psw1legend" ><%=tit.gettitle0("_password")%></div>
                        <input class="myinput" style="height:44px;margin-bottom: 20px" type="password" id="psw1"  placeholder="<%=tit.gettitle0("_password1")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="psw2legend" ><%=tit.gettitle0("_password")%></div>
                        <input  type="password" class="myinput" style="height:44px;margin-bottom: 45px" id="psw2"  placeholder="<%=tit.gettitle0("_password2")%>">
                    </div>
                </form>
                <button  onclick="mysubmit('mypassform','#psw1','myregister3')" class="btn btn-block mybtn2"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_ready")%></button>

            </div>

        </div>

    </div>
</div>

<!-- =============================================================================================================================================-->
<script>
    <%=tit.getlocalcalendar()%>
    $(document).ready(function () {

        myready();
        <%=myw.myready%>
    });



</script>