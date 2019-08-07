<div style="width:100%;height:136px;background-image: linear-gradient(to right,#4D96FA, #964DFA);">
</div>
<div style="width:70px;height:70px;background-color: #574DFA;margin: auto;display: table;    margin-bottom: -35px;    transform: translateY(-35px);">
    <div style="font-size: 18px;font-family:bpg_mrgvlovani_caps_2010;display: table-cell; vertical-align: middle;text-align: center;color:#fff;">
        <%=myw.namefirst1%></div>
</div>
<div style="text-align: center;font-size: 24px;font-family:bpg_mrgvlovani_caps_2010;"><%=myw.namefirst+" "+myw.namelast%>
</div>


<div class="row" style="margin-bottom: 35px;">
    <div class="col-3"></div>
    <div class="col-6 formtitle">
        <div style="float: left;" ><a id="mypolicesh" class="colorbl" href="#" onclick="openpartab('#mypolices')"><%=tit.gettitle0("_mypolices")%></a></div>
        <div style="float: right;"  ><a id="setparamsh" class="colorbl tabheader" href="#" onclick="openpartab('#setparams')"><%=tit.gettitle0("_parchange")%></a></div>
        <div style="text-align: center;" ><a id="setpasswordh" class="colorbl" href="#" onclick="openpartab('#setpassword')"><%=tit.gettitle0("_passchange")%></a></div>
    </div>
    <div class="col-3"></div>
</div>

<div id="mypolices" style="display:none">mypoliccc
</div>
<div id="setpassword"  style="display:none">
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <form  action='' method='post' id='myparpassform' role="form" style="    margin-block-end: 0px;">
                <div>
                    <div class="leftlegend" id="ppsw0legend" ><%=tit.gettitle0("_oldpassword")%></div>
                    <input class="myinput" style="height:44px;margin-bottom: 20px" type="password" id="ppsw0"  placeholder="<%=tit.gettitle0("_oldpassword")%>">
                </div>
                <div>
                    <div class="leftlegend" id="ppsw1legend" ><%=tit.gettitle0("_password")%></div>
                    <input class="myinput" style="height:44px;margin-bottom: 20px" type="password" id="ppsw1"  placeholder="<%=tit.gettitle0("_password1")%>">
                </div>
                <div>
                    <div class="leftlegend" id="ppsw2legend" ><%=tit.gettitle0("_password")%></div>
                    <input  type="password" class="myinput" style="height:44px;margin-bottom: 45px" id="ppsw2"  placeholder="<%=tit.gettitle0("_password2")%>">
                </div>

            </form>
            <button onclick="mysubmitajax('myparpassform','#ppsw1','mychpass','')" class="btn btn-block mybtn2" style="margin-bottom: 80px"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_ready")%></button>

        </div>
        <div class="col-4"></div>
    </div>
</div>
<div id="setparams"  style="display:block">
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
    <form  action='' method='post' id='myparameterform' role="form" style="    margin-block-end: 0px;">
        <div>
            <div class="leftlegend" id="pnamefirstlegend" name="namefirstlegend" style="display: block;"><%=tit.gettitle0("_namefirst")%></div>
            <input type="text" value='<%=myw.namefirst%>' class="myinput" style="height:44px;margin-bottom: 20px" id="pnamefirst" name="namefirst" placeholder="<%=tit.gettitle0("_namefirst")%>">
        </div>
        <div>
            <div class="leftlegend" id="pnamelastlegend"  style="display: block;"><%=tit.gettitle0("_namelast")%></div>
            <input type="text" value='<%=myw.namelast%>' class="myinput" style="height:44px;margin-bottom: 20px" id="pnamelast" name="namelast" placeholder="<%=tit.gettitle0("_namelast")%>">
        </div>
        <div>
            <div class="leftlegend" id="pnamefirstlatlegend" name="namefirstlatlegend" style="display: block;"><%=tit.gettitle0("_namefirstlat")%></div>
            <input type="text" value='<%=myw.namefirstlat%>' class="myinput" style="height:44px;margin-bottom: 20px" id="pnamefirstlat" name="namefirstlat" placeholder="<%=tit.gettitle0("_namefirstlat")%>">
        </div>
        <div>
            <div class="leftlegend" id="pnamelastlatlegend"  style="display: block;"><%=tit.gettitle0("_namelastlat")%></div>
            <input type="text" value='<%=myw.namelastlat%>' class="myinput" style="height:44px;margin-bottom: 20px" id="pnamelastlat" name="namelastlat" placeholder="<%=tit.gettitle0("_namelastlat")%>">
        </div>
        <div>
            <div class="leftlegend" id="ppersonal_nlegend"   style="display: block;"><%=tit.gettitle0("_personal_n")%></div>
            <input type="text" value='<%=myw.personal_n%>' class="myinput" style="height:44px;margin-bottom: 20px" id="ppersonal_n" name="personal_n" placeholder="<%=tit.gettitle0("_personal_n")%>">
        </div>
        <div>
            <div class="leftlegend" id="pbirthdaylegend"   style="display: block;"><%=tit.gettitle0("_birthday")%></div>
            <input type="text" value='<%=myw.birthday%>' class="myinput mydatepicker" style="height:44px;margin-bottom: 20px" id="pbirthday" name="birthday" placeholder="<%=tit.gettitle0("_birthday")%>" data-select="datepicker">
        </div>
        <div style="height:16px;margin-bottom: 20px" id="pgender">
            <div>
                <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="gender" value="male" <%=myw.par(myw.gender,"male","checked")%>>
                    <div style="transform: translateY(-4px);"><%=tit.gettitle0("_male")%></div></label>
                <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="gender" value="female" <%=myw.par(myw.gender,"female","checked")%>>
                    <div style="transform: translateY(-4px);"><%=tit.gettitle0("_female")%></div></label>
            </div>
        </div>
        <div style="margin-bottom: 20px">
            <div class="leftlegend" id="pphonelegend" style="z-index: 1;"><%=tit.gettitle0("_phone")%></div>
            <input type="tel"  value='<%=myw.tel%>'  class="myinput myphone" style="height:44px;" id="pphone" name="phone" placeholder="<%=tit.gettitle0("_phone")%>">
        </div>
        <div>
            <div class="leftlegend" id="pemaillegend" style="display: block;"><%=tit.gettitle0("_email")%></div>
            <input type="text" value='<%=myw.email%>'  class="myinput" style="height:44px;margin-bottom: 20px" id="pemail" name="email" placeholder="<%=tit.gettitle0("_email")%>">
        </div>

        <label class="switch">
            <input type="checkbox" style="width: 30px;height: 14px;display: unset" id="info2mail0" name="info2mail0" <%=myw.par(myw.info2mail,"true","checked")%>>
            <span class="slider round"></span>
        </label>
        <label style="display: unset"><%=tit.gettitle0("_info2mail")%></label>

    </form>
            <button onclick="mysubmitajax('myparameterform','','myparameter','')" class="btn btn-block mybtn2" style="margin-top: 45px;margin-bottom: 80px"><span class="glyphicon glyphicon-off"></span><%=tit.gettitle0("_setparams")%></button>

        </div>
        <div class="col-4"></div>
    </div>


</div>

