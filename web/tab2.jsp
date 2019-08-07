<!--                                     tab2                         -->
<div class="tab">
    <div class="row">
        <div class="col-sm-12" style="text-align: center;height:20px;margin-bottom: 59px;min-height: fit-content;">

            <%=tit.gettitle0("_tabinsurance2")%>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4 formtitle"><%=tit.gettitle0("_whoinsurance")%>
        </div>
        <div class="col-sm-4 forminput">
            <div>
                <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="tforwho" onclick="$('#t2').css('display','none');" value="forme" checked>
                    <div style="transform: translateY(-4px);"><%=tit.gettitle0("_forme")%></div></label>
                <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="tforwho" onclick="$('#t2').css('display','flex')" value="forother">
                    <div style="transform: translateY(-4px);"><%=tit.gettitle0("_forother")%></div></label>
            </div>
        </div>
        <div class="col-sm-2"></div>
    </div>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4 formtitle"><%=tit.gettitle0("_insertdata")%>
        </div>
        <div class="col-sm-4 forminput">
            <div>
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="tpersonal_nlegend" ><%=tit.gettitle0("_personal_n")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tpersonal_n" name="tpersonal_n" placeholder="<%=tit.gettitle0("_personal_n")%>" value="<%=myw.personal_n%>" <%=myw.isregistered("readonly","")%>>
            </div>
            <div>
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="tbirthdaylegend" ><%=tit.gettitle0("_birthday")%></div>
                <input type="text" class="myinput mydatepicker" style="height:44px;margin-bottom: 20px" id="tbirthday" name="tbirthday" placeholder="<%=tit.gettitle0("_birthday")%>"  value="<%=myw.birthday%>" <%=myw.isregistered("readonly","data-select='datepicker'")%>>
            </div>
            <!--div>
                <div class="leftlegend" id="tnamefirstlegend"><%=tit.gettitle0("_namefirst")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tnamefirst" name="tnamefirst" placeholder="<%=tit.gettitle0("_namefirst")%>">
            </div>
            <div>
                <div class="leftlegend" id="tnamelastlegend"><%=tit.gettitle0("_namelast")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tnamelast" name="tnamelast" placeholder="<%=tit.gettitle0("_namelast")%>">
            </div-->
            <div>
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="tnamefirstlatlegend" ><%=tit.gettitle0("_namefirstlat")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tnamefirstlat" name="tnamefirstlat" placeholder="<%=tit.gettitle0("_namefirstlat")%>" value="<%=myw.namefirstlat%>" <%=myw.isregistered("readonly","")%>>
            </div>
            <div>
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="tnamelastlatlegend" ><%=tit.gettitle0("_namelastlat")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tnamelastlat" name="tnamelastlat" placeholder="<%=tit.gettitle0("_namelastlat")%>" value="<%=myw.namelastlat%>" <%=myw.isregistered("readonly","")%>>
            </div>
            <div style="height:16px;margin-bottom: 20px" id="tgender">
                <div>
                    <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="tgender" value="male" <%=myw.getstr(myw.gender.equals("male"),"checked","")%> <%=myw.isregistered("disabled='disabled'","")%>>
                        <div style="transform: translateY(-4px);"><%=tit.gettitle0("_male")%></div></label>
                    <label class="radio-inline" style="width:45%"><input type="radio"class="mycheckbox" name="tgender" value="female" <%=myw.getstr(!myw.gender.equals("male"),"checked","")%> <%=myw.isregistered("disabled='disabled'","")%>>
                        <div style="transform: translateY(-4px);"><%=tit.gettitle0("_female")%></div></label>
                </div>
            </div>



            <div style="margin-bottom: 20px">
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="tphonelegend" style="z-index: 1;"><%=tit.gettitle0("_phone")%></div>
                <input type="tel"  class="myinput myphone" style="height:44px;" id="tphone" name="tphone" placeholder="<%=tit.gettitle0("_phone")%>"  value="<%=myw.tel%>" <%=myw.isregistered("readonly","")%>>
            </div>
            <div>
                <div class="leftlegend<%=myw.isregistered("da","")%>" id="temaillegend" ><%=tit.gettitle0("_email")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 4px" id="temail" name="temail" placeholder="<%=tit.gettitle0("_email")%>"  value="<%=myw.email%>" <%=myw.isregistered("readonly","")%>>
            </div>
            <div style="margin-bottom:35px;">
                <%=tit.gettitle0("_iftake")%>
            </div>

        </div>
        <div class="col-sm-2"></div>
    </div>

    <div class="row" id="t2" style="display: none;">
        <div class="col-sm-2"></div>
        <div class="col-sm-4 formtitle"><%=tit.gettitle0("_insurancedata2")%>
        </div>
        <div class="col-sm-4 forminput">
            <div>
                <div class="leftlegend" id="t2personal_nlegend" ><%=tit.gettitle0("_personal_n")%></div>
                <div style="    position: relative;    height: 0px;    width: 100%;    text-align: right;transform: translateY(7px) ;padding-right: 10px;">
                    <a onclick="getpersonajax('t2personal_n')" href="#"><img src='icons/usericon2.svg'/><img src='icons/select.svg'/></a></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="t2personal_n" name="t2personal_n" placeholder="<%=tit.gettitle0("_personal_n")%>">
            </div>
            <div>
                <div class="leftlegend" id="t2namefirstlatlegend" ><%=tit.gettitle0("_namefirstlat")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="t2namefirstlat" name="t2namefirstlat" placeholder="<%=tit.gettitle0("_namefirstlat")%>">
            </div>
            <div>
                <div class="leftlegend" id="t2namelastlatlegend" ><%=tit.gettitle0("_namelastlat")%></div>
                <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="t2namelastlat" name="t2namelastlat" placeholder="<%=tit.gettitle0("_namelastlat")%>">
            </div>
            <div style="height:16px;margin-bottom: 20px" id="t2gender">
                <div>
                    <label class="radio-inline" style="width:45%"><input type="radio" class="mycheckbox" name="t2gender" id='t2male' value="male">
                        <div style="transform: translateY(-4px);"><%=tit.gettitle0("_male")%></div></label>
                    <label class="radio-inline" style="width:45%"><input type="radio" class="mycheckbox" name="t2gender" id='t2female' value="female">
                        <div style="transform: translateY(-4px);"><%=tit.gettitle0("_female")%></div></label>
                </div>
            </div>
            <div>
                <div class="leftlegend" id="t2birthdaylegend" ><%=tit.gettitle0("_birthday")%></div>
                <input type="text" class="myinput mydatepicker" style="height:44px;margin-bottom: 20px" id="t2birthday" name="t2birthday" placeholder="<%=tit.gettitle0("_birthday")%>" data-select="datepicker">
            </div>
        </div>
        <div class="col-sm-2"></div>
    </div>

    <div class="row">
        <div class="col-sm-6"></div>
        <div class="col-sm-4 forminput">
            <div style="margin-bottom:28px;">
                <input type="button"
                       style="background-color: #574DFA;    width: 24px;height:24px;    border-radius: 12px;background-position: center;background-image: url(icons/plus.svg);background-repeat: no-repeat;">
                <div style="display: inline-flex;transform: translateY(-5px);"><%=tit.gettitle0("_addinsurance")%>
                </div>
            </div>
            <div style="margin-bottom: 35px;height:16px;min-height: fit-content;" id="tcheckboxrule">
                <label  class="checkbox-inline" style="width:100%;"><input type="checkbox" class="mycheckbox" name="tcheckboxrule">
                    <div style="transform: translateY(-4px);"><%=tit.gettitle0("_applyrules")%></div></label>
            </div>
        </div>
        <div class="col-sm-2"></div>
    </div>
</div>




