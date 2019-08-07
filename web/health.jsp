
<form  id="carForm" action="" method="post" style="margin:0px">


    <div class="container-fluid container1200">

        <div class="row">
            <div class="col-sm-12"
                 style="font-size: 24px;font-family:bpg_mrgvlovani_2010;text-align: center;height:42px;margin-top: 30px;margin-bottom: 0px;min-height: fit-content;">

                <%=tit.gettitle0("_healthinsurance")%>
            </div>
        </div>
        <%@include file="tab2.jsp" %>
        <div class="tab">
            <div class="row">
                <div class="col-sm-12" style="text-align: center;height:30px;margin-bottom: 48px;min-height: fit-content;">

                    <%=tit.gettitle0("_healthinsurance1")%>
                </div>
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
