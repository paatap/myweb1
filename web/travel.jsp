
<form  id="travelForm" action="" method="post" style="margin:0px">


    <div class="container-fluid container1200">

        <div class="row">
            <div class="col-sm-12"
                 style="font-size: 24px;font-family:bpg_mrgvlovani_2010;text-align: center;height:42px;margin-top: 30px;margin-bottom: 0px;min-height: fit-content;">

                <%=tit.gettitle0("_travelinsurance")%>
            </div>
        </div>
        <%@include file="tab2.jsp" %>
        <div class="tab">
            <div class="row">
                <div class="col-sm-12" style="text-align: center;height:30px;margin-bottom: 48px;min-height: fit-content;">

                    <%=tit.gettitle0("_travelinsurance1")%>
                </div>
            </div>

            <div class="row" style="height:98px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_wheretravel")%>
                </div>
                <div class="col-sm-4 forminput" id="twheretravel">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="twheretravel" value="abroad"><div class="myradiotext"><%=tit.gettitle0("_inabroad")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 45px;">
                            <input type="radio" class="form-check-input" name="twheretravel" value="georgia"><div class="myradiotext"><%=tit.gettitle0("_ingeorgia")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_whatcountry")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 85px;margin-bottom: 45px;">
                    <select id="tcountry" name="tcountry" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value> -- <%=tit.gettitle0("_selectcountry")%> --</option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>
                    <input type="button"
                           style="background-color: #574DFA;    width: 24px;height:24px;    border-radius: 12px;background-position: center;background-image: url(icons/plus.svg);background-repeat: no-repeat;">
                    <div style="display: inline-flex;transform: translateY(-5px);"><%=tit.gettitle0("_addcountry")%>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row" style="height: 98px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_whatisurance")%>
                </div>
                <div class="col-sm-4 forminput" id="twhatinsurance">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="twhatinsurance" value="once"><div class="myradiotext"><%=tit.gettitle0("_once")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 45px;">
                            <input type="radio" class="form-check-input" name="twhatinsurance" value="multiple"><div class="myradiotext"><%=tit.gettitle0("_multiple")%></div>
                        </label>
                    </div>

                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row" style="height: 88px">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_insurancelimit")%>
                </div>
                <div class="col-sm-2 forminput">
                    <select id="tinsurancelimit" name="tinsurancelimit"  class="myselect">
                        <option>50000 USD</option>
                        <option>40000 USD</option>
                        <option>30000 USD</option>
                        <option>20000 USD</option>
                    </select>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_insuranceinterval")%>
                </div>
                <div class="col-sm-4 forminput" style="margin-bottom: 45px;">
                    <input type="text" class="mydatepicker" style="height:44px;width:45%;float: left;" id="tdate1"
                           name="tdate1" placeholder="<%=tit.gettitle0("_datebegin")%>" data-select="datepicker">
                    <div style="width:10%;text-align: center;float: left;padding-top: 10px;">-</div>
                    <input type="text" class="mydatepicker" style="height:44px;width:45%;float: left;" id="tdate2"
                           name="tdate2" placeholder="<%=tit.gettitle0("_dateend")%>" data-select="datepicker">

                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_andwant")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 16px;margin-bottom: 60px;">
                    <label class="checkbox-inline"><input class="myradiovert" type="checkbox" name="tbaggageinsurance"
                                                          value=""><%=tit.gettitle0("_baggageinsurance")%>
                    </label>
                    <label class="checkbox-inline"><input class="myradiovert" type="checkbox" name="treisinsurance"
                                                          value=""><%=tit.gettitle0("_reisinsurance")%>
                    </label>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>



        <div class="row" style="height: 68px">
            <div class="col-6"></div>
            <div class="col-1">
                <button type="button" class="btn btn-block mybtn2" style="height:38px" id="prevBtn" onclick="nextPrev(-1)"><%=tit.gettitle0("_previous")%></button>
            </div>
            <div class="col-3">
                <button type="button" class="btn btn-block mybtn2" style="height:38px" id="nextBtn" onclick="nextPrev(1)"><%=tit.gettitle0("_next")%></button>
            </div>
            <div class="col-2"></div>
        </div>
        <!-- Circles which indicates the steps of the form: -->
        <div style="text-align:center;height:20px;margin-top:20px;">
            <span class="step"></span>
            <span class="step"></span>
        </div>

    </div>
</form>

<script>

    var currentTab = 0;






    function validateForm() {

        var valid = true;

        if (currentTab==1){
            var da=validateradio('twheretravel');
            da+=validateselect('tcountry');
            da+=validateradio('twhatinsurance');
            da+=validatedate('tdate1');da+=validatedate('tdate2');
            valid=da==0;
        }else if (currentTab==0){
            var da=validatenull('tnamefirst');
            da+=validatenull('tnamelast');
            da+=validatenull('tnamefirstlat');
            da+=validatenull('tnamelastlat');
            da+=validateradio('tgender');
            da+=validatedate('tbirthday');
            da+=validatenull('tpersonal_n');
            da+=validatephone('tphone');
            da+=validatemail('temail');
            da+=validatenull('tpersonal_n');
            da+=validateradio('tcheckboxrule');
            if ($( "input[name='tforwho']:checked" ).val()=="forother"){
                da+=validatenull('t2namefirstlat');
                da+=validatenull('t2namelastlat');
                da+=validateradio('t2gender');
                da+=validatedate('t2birthday');
                da+=validatenull('t2personal_n');
            }
            valid=da==0;
        }


        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    var nextbtn2='<%=tit.gettitle0("_next2")%>';
    var nextbtn='<%=tit.gettitle0("_next")%>';
    showTab(currentTab); // Display the current tab
    $(document).ready(function () {

        myready();

    });
</script>
