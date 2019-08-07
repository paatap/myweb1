
<form  id="carForm" action="" method="post" style="margin:0px">


    <div class="container-fluid container1200">

        <div class="row">
            <div class="col-sm-12"
                 style="font-size: 24px;font-family:bpg_mrgvlovani_2010;text-align: center;height:42px;margin-top: 30px;margin-bottom: 0px;min-height: fit-content;">

                <%=tit.gettitle0("_greencardinsurance")%>
            </div>
        </div>
        <%@include file="tab2.jsp" %>
        <div class="tab">
            <div class="row">
                <div class="col-sm-12" style="text-align: center;height:30px;margin-bottom: 48px;min-height: fit-content;">

                    <%=tit.gettitle0("_greencardinsurance1")%>
                </div>
            </div>


            <div class="row" style="height:98px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_wheretravel2")%>
                </div>
                <div class="col-sm-4 forminput" id="twheretravel">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="twheretravel" value="allgreen"><div class="myradiotext"><%=tit.gettitle0("_allgreen")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 45px;">
                            <input type="radio" class="form-check-input" name="twheretravel" value="country4"><div class="myradiotext"><%=tit.gettitle0("_country4")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row" style="height:252px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_carcategory")%>
                </div>
                <div class="col-sm-4 forminput" id="tcarcategory">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarcategory" value="sedan"><div class="myradiotext"><%=tit.gettitle0("_sedan")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarcategory" value="kupe"><div class="myradiotext"><%=tit.gettitle0("_kupe")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 45px;">
                            <input type="radio" class="form-check-input" name="tcarcategory" value="jip"><div class="myradiotext"><%=tit.gettitle0("_jip")%></div>
                        </label>
                    </div>

                    <div>
                        <div class="leftlegend" id="tcarnumberlegend"><%=tit.gettitle0("_carnumber")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tcarnumber" name="carnumber" placeholder="<%=tit.gettitle0("_carnumber")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="tcarvinlegend"><%=tit.gettitle0("_carvin")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tcarvin" name="carnumber" placeholder="<%=tit.gettitle0("_carvin")%>">
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_allinfo")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 108px;margin-bottom: 35px;">
                    <select id="tmarca" name="tmarca" class="myselect" style="margin-bottom: 20px;">
                        <option hidden disabled selected value><%=tit.gettitle0("_marca")%></option>
                        <option>ge</option>
                        <option>ru</option>
                        <option>en</option>
                        <option>uk</option>
                    </select>
                    <div class="row">
                        <div class="col-sm-6">
                            <select id="tmodel" name="tmodel" class="myselect" style="margin-bottom: 20px;">
                                <option hidden disabled selected value><%=tit.gettitle0("_model")%></option>
                                <option>ge</option>
                                <option>ru</option>
                                <option>en</option>
                                <option>uk</option>
                            </select></div>
                        <div class="col-sm-6">
                            <select id="tyear" name="tyear" class="myselect" style="margin-bottom: 20px;">
                                <option hidden disabled selected value><%=tit.gettitle0("_year")%></option>
                                <option>ge</option>
                                <option>ru</option>
                                <option>en</option>
                                <option>uk</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_insuranceinterval")%>
                </div>
                <div class="col-sm-4 forminput" style="margin-bottom: 45px;">
                    <div class="row">
                        <div class="col-sm-6">
                    <div>
                        <div class="leftlegend" id="tehpasplegend"><%=tit.gettitle0("_number")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tehpasp" name="tehpasp" placeholder="<%=tit.gettitle0("_number")%>">
                    </div>
                        </div>
                    <div class="col-sm-6">
                    <input type="text" class="mydatepicker" style="height:44px;width:100%;float: left;" id="texpdate"
                           name="texpdate" placeholder="<%=tit.gettitle0("_expdate")%>" data-select="datepicker">
                    </div></div>
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
