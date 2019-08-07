
<form  id="tabForm" action="" method="post" style="margin:0px">


    <div class="container-fluid container1200">

        <div class="row">
            <div class="col-sm-12"
                 style="font-size: 24px;font-family:bpg_mrgvlovani_2010;text-align: center;height:42px;margin-top: 30px;margin-bottom: 0px;min-height: fit-content;">

                <%=tit.gettitle0("_carinsurance")%>
            </div>
        </div>


        <%@include file="tab2.jsp" %>

        <div class="tab">
            <div class="row">
                <div class="col-sm-12" style="text-align: center;height:30px;margin-bottom: 48px;min-height: fit-content;">

                    <%=tit.gettitle0("_carinsurance1")%>
                </div>
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
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tcarnumber" name="tcarnumber" placeholder="<%=tit.gettitle0("_carnumber")%>">
                    </div>
                    <div>
                        <div class="leftlegend" id="tcarvinlegend"><%=tit.gettitle0("_carvin")%></div>
                        <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tcarvin" name="tcarnumber" placeholder="<%=tit.gettitle0("_carvin")%>">
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_allinfo")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 195px;margin-bottom: 35px;">
                    <select id="tmarca" name="tmarca" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                        <option hidden disabled selected value><%=tit.gettitle0("_marca")%></option>
                        <%=myw.cars1%>
                    </select><i class="fa fa-chevron-down"></i>
                 <div class="row">
                     <div class="col-sm-6">
                    <select id="tmodel" name="tmodel" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                    </select><i class="fa fa-chevron-down"></i></div>
                    <div class="col-sm-6">
                    <select id="tyear" name="tyear" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                        <option hidden disabled selected value><%=tit.gettitle0("_year")%></option>
                        <%=myw.year%>
                    </select><i class="fa fa-chevron-down"></i>
                    </div>
                </div>


                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarwheel" value="carleft"><div class="myradiotext"><%=tit.gettitle0("_carleft")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarwheel" value="carright"><div class="myradiotext"><%=tit.gettitle0("_carright")%></div>
                        </label>
                    </div>



                </div>
                <div class="col-sm-2"></div>
            </div>

            <script type="text/javascript">
                var syncList1 = new syncList;
                syncList1.dataList = {
                    '':{'disable':'<%=tit.gettitle0("_model")%>'},
                    <%=myw.cars2%>
                };
                syncList1.sync("tmarca","tmodel");
                document.getElementById("tmarca").style.color="#888888";
            </script>


            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_carcost")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 44px;margin-bottom: 35px;">
                    <div class="row">
                     <div class="col-sm-6">

                             <div class="leftlegend" id="tcarcostlegend"><%=tit.gettitle0("_cost")%></div>
                             <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tcarcost" name="tcarcost" placeholder="0.000">

                     </div>
                    <div class="col-sm-6">
                    <select id="tcurrency" name="tcurrency" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                        <option hidden disabled selected value><%=tit.gettitle0("_currency")%></option>
                        <option><%=tit.gettitle0("_dollar")%></option>
                        <option><%=tit.gettitle0("_euro")%></option>
                        <option><%=tit.gettitle0("_lari")%></option>
                    </select><i class="fa fa-chevron-down"></i>
                    </div>
                </div>
                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_yearmileage")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 44px;margin-bottom: 35px;">
                    <div class="row">
                     <div class="col-sm-6">

                             <div class="leftlegend" id="tyearmileagelegend"></div>
                             <input type="text" class="myinput" style="height:44px;margin-bottom: 20px" id="tyearmileage" name="tyearmileage" placeholder="0">

                     </div>
                    <div class="col-sm-6" style="padding-top: 9px">
                        <%=tit.gettitle0("_km")%>
                    </div>
                </div>
                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_cartarget")%>
                </div>
                <div class="col-sm-4 forminput" id="tcartarget">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcartarget" value="carpersonal"><div class="myradiotext"><%=tit.gettitle0("_carpersonal")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcartarget" value="carbusness"><div class="myradiotext"><%=tit.gettitle0("_carbusness")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_haveincident")%>
                </div>
                <div class="col-sm-4 forminput" id="thaveincident">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="thaveincident" value="yes"><div class="myradiotext"><%=tit.gettitle0("_yes")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="thaveincident" value="no"><div class="myradiotext"><%=tit.gettitle0("_no")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_carusernolimit")%>
                </div>
                <div class="col-sm-4 forminput" id="tcarusernolimit">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarusernolimit" value="yes"><div class="myradiotext"><%=tit.gettitle0("_onedriver")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tcarusernolimit" value="no"><div class="myradiotext"><%=tit.gettitle0("_manydriver")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_insurancetype")%>
                </div>
                <div class="col-sm-4 forminput" id="tinsurancetype">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tinsurancetype" value="allcasco"><div class="myradiotext"><%=tit.gettitle0("_allcasco")%></div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tinsurancetype" value="partcasco"><div class="myradiotext"><%=tit.gettitle0("_partcasco")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row" style="height:54px;margin-bottom: 35px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle"><%=tit.gettitle0("_franvolume")%>
                </div>
                <div class="col-sm-4 forminput" id="tfranvolume">

                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tfranvolume" value="0"><div class="myradiotext">0%</div>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" style="margin-bottom: 20px;">
                            <input type="radio" class="form-check-input" name="tfranvolume" value="no"><div class="myradiotext"><%=tit.gettitle0("_no")%></div>
                        </label>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_liabilitylimit")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 44px;margin-bottom: 35px;">
                    <select id="tliabilitylimit" name="tliabilitylimit" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                        <option selected>0</option>
                        <option>5000</option>
                        <option>10000</option>
                        <option>20000</option>
                        <option>50000</option>
                    </select><i class="fa fa-chevron-down"></i>
                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4 formtitle" style="line-height: 44px"><%=tit.gettitle0("_driverlimit")%>
                </div>
                <div class="col-sm-4 forminput" style="height: 44px;margin-bottom: 35px;">
                    <select id="tdriverlimit" name="tdriverlimit" class="myselect" style="margin-bottom: 20px;" onchange="changeselect(this)">
                        <option selected>0</option>
                        <option>5000</option>
                        <option>10000</option>
                        <option>20000</option>
                        <option>50000</option>
                    </select><i class="fa fa-chevron-down"></i>
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



    function tabsubmitajax() {
        var form = document.getElementById("tabForm");//$(formid);
        var params = $('#tabForm').serializeArray();
        params.push({name: 'type', value: 'getcasco'});

        adddate2par('tbirthday',params);
        adddate2par('t2birthday',params);
        adddate2par('tdate1',params);
        adddate2par('tdate2',params);


        $.ajax({
            type: "POST",
            url: "getjsondata",
            cache: false,
            data: params,
            dataType: 'json',
            success: function (response) {
                var mess=response.mess;
                if (mess=='message') {
                    document.getElementById('mymessagetxt').innerHTML = response.txt;
                    $('#mymessage').modal({backdrop: 'static'});
                }else if (mess=='error'){
                    document.getElementById('myerrortxt').innerHTML = response.txt;
                    $('#myerror').modal({backdrop: 'static'});
                }
                //alert("postkuku"+response);nextPrev(2);
                //window.location.href = "/"; //window.location.href;

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status+"\n"+thrownError);
                //alert(thrownError);
            }
        });

    }


    function validateForm() {

        var valid = true;

        if (currentTab==1){
            var da=0;

            valid=da==0;
        }else if (currentTab==0){
            var da=0;
            //da+=validatenull('tnamefirst');
            //da+=validatenull('tnamelast');
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
    showTab(currentTab);
    $(document).ready(function () {

        myready();
        //showTab(currentTab); // Display the current tab
    });
</script>

