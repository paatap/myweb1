
<form  id="carForm" action="" method="post" style="margin:0px">


    <div class="container-fluid container1200">

        <div class="row">
            <div class="col-sm-12"
                 style="font-size: 24px;font-family:bpg_mrgvlovani_2010;text-align: center;height:42px;margin-top: 30px;margin-bottom: 0px;min-height: fit-content;">

                <%=tit.gettitle0("_propertyinsurance")%>
            </div>
        </div>
        <%@include file="tab2.jsp" %>
        <div class="tab">
            <div class="row">
                <div class="col-sm-12" style="text-align: center;height:30px;margin-bottom: 48px;min-height: fit-content;">

                    <%=tit.gettitle0("_propertyinsurance1")%>
                </div>
            </div>

            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_propertyused")%>
                </div>
                <div class="col-sm-4 forminput" id="tpropertyused">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpropertyused" value="tolive"><div class="myradiotext"><%=tit.gettitle0("_tolive")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpropertyused" value="torent"><div class="myradiotext"><%=tit.gettitle0("_torent")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_address")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 108px;margin-bottom: 35px;">
                    <select id="town" name="town" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_town")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>
                    <div>
                        <div class="leftlegend" id="taddresslegend"><%=tit.gettitle0("_address")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="taddress" name="address" placeholder="<%=tit.gettitle0("_address")%>">
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_allinfo")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 426px;margin-bottom: 35px;">
                    <div class="row">
                        <div class="col-sm-6">

                            <div class="leftlegend" id="tfloorlegend"><%=tit.gettitle0("_floor")%></div>
                            <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tfloor" name="floor" placeholder="<%=tit.gettitle0("_floor")%>">

                        </div>
                        <div class="col-sm-6">
                            <select id="tmakeyear" name="makeyear" class="myselect" style="margin-bottom: 20px;">
                                <option hidden disabled selected value><%=tit.gettitle0("_makeyear")%></option>
                                <option>ge</option>
                                <option>ru</option>
                                <option>en</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">

                            <div class="leftlegend" id="ttotalarealegend"></div>
                            <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="ttotalarea" name="totalarea" placeholder="<%=tit.gettitle0("_totalarea")%>">

                        </div>
                        <div class="col-sm-6">
                            <%=tit.gettitle0("_m2")%>
                        </div>
                    </div>

                    <select id="tcarcasscost" name="carcasscost" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_carcasscost")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>

                    <select id="trepaircost" name="repaircost" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_repaircost")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>

                    <select id="tfurniturecost" name="furniturecost" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_furniturecost")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>

                    <select id="ttehncost" name="tehncost" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_tehncost")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>

                        <div style="background-color: #EFF3F7;padding: 10px">
                            <%=tit.gettitle0("_allcost")%>
                            <div  style="float: right;" id="tallcost" name="floor">000.000 <%=tit.gettitle0("_lari")%></div>
                        </div>

                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_neighborinsurance")%>
                </div>
                <div class="col-sm-4 forminput" id="tneighborinsurance">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="neighborinsurance" value="yes"><div class="myradiotext"><%=tit.gettitle0("_yes")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="neighborinsurance" value="no"><div class="myradiotext"><%=tit.gettitle0("_no")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
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



            <div class="row" style="height:125px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_paymentschedule")%>
                </div>
                <div class="col-sm-4 forminput" id="tpaymentschedule">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpaymentschedule" value="inmounth"><div class="myradiotext"><%=tit.gettitle0("_inmounth")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpaymentschedule" value="inkvart"><div class="myradiotext"><%=tit.gettitle0("_inkvart")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpaymentschedule" value="inyear2"><div class="myradiotext"><%=tit.gettitle0("_inyear2")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tpaymentschedule" value="inonce"><div class="myradiotext"><%=tit.gettitle0("_inonce")%></div>
                        </label>
                    </div>

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
            var da=0;

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

