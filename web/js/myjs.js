function validateradio(el) {
    var el0=$("input[name="+el+"]:checked").val();
    if (el0==undefined) {
        var el1 = document.getElementById(el);
        //el1.style.backgroundColor='#f99';
        if (el1.className.indexOf(" invalid")<0) el1.className+= " invalid";
        return 1;
    }
    return 0;
}
function validatedate(el) {
    var el1 = document.getElementById(el);
    var value=el1.value;

    var check = false;
    var re = /^\d{1,2}\-\d{1,2}\-\d{4}$/;
    if( re.test(value)){
        var adata = value.split('-');
        var dd = parseInt(adata[0],10);
        var mm = parseInt(adata[1],10);
        var yyyy = parseInt(adata[2],10);
        var xdata = new Date(yyyy,mm-1,dd);
        if ( ( xdata.getFullYear() === yyyy ) && ( xdata.getMonth () === mm - 1 ) && ( xdata.getDate() === dd ) ) {
            check = true;
        }
        else {
            check = false;
        }
    } else {
        check = false;
    }


    if (!check) {
        //alert('Please enter a valid e-mail address.');
        //el1.style.backgroundColor='#f99';
        if (el1.className.indexOf(" invalid")<0) el1.className+= " invalid";
        return 1;
    }

    return 0;
}
function validatemail(el) {
    var email = document.getElementById(el);


    var emailFilter = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;

    if (!emailFilter.test(email.value)) {
        //alert('Please enter a valid e-mail address.');
        //email.style.backgroundColor='#f99';
        if (email.className.indexOf(" invalid")<0) email.className+= " invalid";
        return 1;
    }

    return 0;
}
function validatephone(el) {

    var phone = document.getElementById(el);


    var phone2 = phone.value;
    phone2 = phone2.replace(/[^0-9]/g,'');
    phone.value=phone2;
    if (phone2.length < 9) {
        //alert('Please correct your phone number.');
        //phone.style.backgroundColor='#f99';
        if (phone.className.indexOf(" invalid")<0) phone.className+= " invalid";
        return 1;
    }

    return 0;
}
function validatepass(el) {

    var el1 = document.getElementById(el);



    if (el1.value=='') {
        //alert('Please correct your phone number.');
        //el1.style.backgroundColor='#f99';
        if (el1.className.indexOf(" invalid")<0) el1.className+= " invalid";
        return 1;
    }

    return 0;
}
function validatenull(el) {

    var el1 = document.getElementById(el);



    if (el1.value=='') {
        //alert('Please correct your phone number.');
        //el1.style.backgroundColor='#f99';
        if (el1.className.indexOf(" invalid")<0) el1.className+= " invalid";
        return 1;
    }

    return 0;
}
function validateselect(el) {

    var el1 = document.getElementById(el);



    if (el1.value==''||el1.value.startsWith("-- ")) {
        //alert('Please correct your phone number.');
        //el1.style.backgroundColor='#f99';
        if (el1.className.indexOf(" invalid")<0) el1.className+= " invalid";
        return 1;
    }

    return 0;
}
var px1=-1,py1=-1,x1=-1,y1=-1;

var elxy;


function mytablo(e){
    if (borderda0) {
        e = e || window.event;
        var px = e.pageX+window.scrollX;
        var py = e.pageY+window.scrollY;


        if(px!=px1&&py!=py1){
            x1=-1;y1=-1;px1=px;py1=py;
        }

        var viewportOffset = (this).getBoundingClientRect();
// these are relative to the viewport, i.e. the window
        var y2 = viewportOffset.top+window.scrollY;
        var x2 = viewportOffset.left+window.scrollX;

        var r1=(y1-py)*(y1-py)+(x1-px)*(x1-px);
        var r2=(y2-py)*(y2-py)+(x2-px)*(x2-px);

        if (r2<r1) {y1=y2;x1=x2;
            if (!!window.event.shiftKey){elxy=(this);}
            var yy = viewportOffset.height;
            var xx = viewportOffset.width;
            var x11=0,y11=0;
            if (elxy!=undefined) {
                var viewportOffset11 = elxy.getBoundingClientRect();
// these are relative to the viewport, i.e. the window
                y11 = viewportOffset11.top + window.scrollY;
                x11 = viewportOffset11.left + window.scrollX;
            }
            $("#tablo").html(Math.round(x1-x11) + "+" + Math.round(xx) + "/" + Math.round(y1-y11) + "+" + Math.round(yy));

        }
    }
//    $(this).css("border", "1px solid black");
}
var borderda0=false;
function borderda() {
    //document.getElementById("mymove").style.display = "block";
    borderda0=!borderda0;
    if (borderda0) {
        // $('div').css('border', '1px solid red'),css('box-sizing', 'border-box');
        $('div').css('box-shadow', 'inset 0px 0px 0px 1px #f00');
        $('#myvert').css('display', 'block');
    }
    else{
        $('div').css('box-shadow', 'none');
        $('#myvert').css('display', 'none');
    }

}


//https://stackoverflow.com/questions/32168234/change-the-bootstrap-modal-effect/32168912



function login2register(){
    $("#mylogin").modal("hide");
    setTimeout(  $("#myregister").modal("show"), 500);

}
function modal2modal(modal1,modal2){
    $(modal1).modal("hide");
    $(modal2).modal({backdrop: 'static'});
    //setTimeout( function(){ $(modal2).modal("show"); }, 200);
    // setTimeout(  $(modal2).modal("show"), 2500);

}
//    $('#mylogin').modal();

function afterModalTransition(e) {
    e.setAttribute("style", "display: none !important;");
}
/*
$('#mylogin').on('hide.bs.modal', function (e) {
    //     setTimeout( () => afterModalTransition(this), 200);
    //  alert("hide");
})
$('#mylogin').on('show.bs.modal', function (e) {
    //     setTimeout( () => afterModalTransition(this), 200);
    // alert("show");
})

 $.datePicker.defaults.views= {
 decade: {
 show: null,
 selected: [],
 disabled: [],
 forbidden: [],
 enabled: [],
 marked: []
 },
 year: {
 show: null,
 selected: [],
 disabled: [],
 forbidden: [],
 enabled: [],
 marked: []
 },
 month: {
 show: null,
 selected: [],
 disabled: [],
 forbidden: [],
 enabled: [],
 marked: [],
 firstDayOfWeek: 0
 }
 }*/


function mylegendstart() {

    $(".myinput").focus(function (e) {
        mylegend((this).id, $(this).val());
    });
    $(".myinput").blur(function (e) {
        mylegend((this).id, $(this).val());
    });
    $(".myinput").keyup(function (e) {
        mylegend((this).id, $(this).val());
        //(this).style.backgroundColor = '#fff';
        $(this).removeClass("invalid");
    });
//$( "#birthday" ).change(function(e) {mylegend((this).id,$(this).val());(this).style.backgroundColor='#fff';});
  /*  $('input[type=radio][name=gender]').change(function () {
        //var el1 = document.getElementById('gender').style.backgroundColor = '#fff';
        var el1 = document.getElementById('gender');
        el1.className=el1.className.replace(" invalid","");
    });
    $('input[type=checkbox][name=checkboxrule]').change(function () {
        //var el1 = document.getElementById('checkboxrule').style.backgroundColor = '#fff';
        var el1 = document.getElementById('checkboxrule');
        el1.className=el1.className.replace(" invalid","");
    });

    */



    $('input[type=radio]').change(function () {
        var nam=(this).name;
        //var el1 = document.getElementById('gender').style.backgroundColor = '#fff';
        var el1 = document.getElementById(nam);
        el1.className=el1.className.replace(" invalid","");
    });

    $('input[type=checkbox]').change(function () {
        var nam=(this).name;
        //var el1 = document.getElementById('checkboxrule').style.backgroundColor = '#fff';
        var el1 = document.getElementById(nam);
        if (el1!=null)
        el1.className=el1.className.replace(" invalid","");
    });
    $('select').change(function () {
        var nam=(this).name;
        //var el1 = document.getElementById('gender').style.backgroundColor = '#fff';
        var el1 = document.getElementById(nam);
        el1.className=el1.className.replace(" invalid","");
    });
}

function mylegend(id,val){
    var el=$("#"+id+"legend");
    if (val=="")
        el.css('display', 'none');
    else
        el.css('display', 'block');

}

function adddate2(ddate,fform){
    var inputb2 = document.createElement('input');
    inputb2.type = 'hidden';
    inputb2.name = ddate+"2";
    var s1=$("#"+ddate).val().split("-");
    inputb2.value = s1[2]+'-'+s1[1]+'-'+s1[0];

    fform.appendChild(inputb2);
}
function adddate2par(ddate,params){
    var s1=$("#"+ddate).val().split("-");
    params.push({name: ddate+"2", value: s1[2]+'-'+s1[1]+'-'+s1[0]});

}
function mysubmit(formid,passid,type) {
    //var e = $(element);//element not element.id
    //var form = e.parent('form').get(0);//.get(0) added

    var form = document.getElementById(formid);//$(formid);

    if (type=='mylogin'){
        var da=validatenull('usrname');
        da+=validatepass('psw');
        if (da!=0) return;
    }else if (type=='myregister'){
        var da=validatenull('namefirst');
        da+=validatenull('namelast');
        da=validatenull('namefirstlat');
        da+=validatenull('namelastlat');
        da+=validatenull('personal_n');
        da+=validatedate('birthday');
        da+=validateradio('gender');
        da+=validatephone('phone');
        da+=validatemail('email');
        da+=validateradio('checkboxrule');

        if (da!=0) return;
        var inputp = document.createElement('input');
        inputp.type = 'hidden';
        inputp.name = "phonepre";
        inputp.value = $("#phone").intlTelInput("getSelectedCountryData").dialCode;
        form.appendChild(inputp);
        var inputb2 = document.createElement('input');
        inputb2.type = 'hidden';
        inputb2.name = "birthday2";
        var s1=$("#birthday").val().split("-");
        inputb2.value = s1[2]+'-'+s1[1]+'-'+s1[0];

        form.appendChild(inputb2);
    }else if (type=='myregister3'){
        var da=validatenull('psw1');

        var pass1 = document.getElementById('psw1');
        var pass2 = document.getElementById('psw2');
        //alert(pass1.value+'-'+pass2.value);return;
        if (pass1.value!=pass2.value) pass2.value='';

        da+=validatenull('psw2');

        if (da!=0) return;
       // var inputp = document.createElement('input');
       // inputp.type = 'hidden';
       // inputp.name = "phonepre";
       // inputp.value = $("#phone").intlTelInput("getSelectedCountryData").dialCode;
       // form.appendChild(inputp);
    }else if (type=='myparameter'){
        var da=validatenull('pnamefirst');
        da+=validatenull('pnamelast');
        da+=validatenull('ppersonal_n');
        da+=validatedate('pbirthday');
        //da+=validateradio('pgender');
        da+=validatephone('pphone');
        da+=validatemail('pemail');

        if (da!=0) return;
        var inputp = document.createElement('input');
        inputp.type = 'hidden';
        inputp.name = "phonepre";
        inputp.value = $("#pphone").intlTelInput("getSelectedCountryData").dialCode;
        form.appendChild(inputp);
        var inputb2 = document.createElement('input');
        inputb2.type = 'hidden';
        inputb2.name = "birthday2";
        var s1=$("#pbirthday").val().split("-");
        inputb2.value = s1[2]+'-'+s1[1]+'-'+s1[0];
form.appendChild(inputb2);
        var inputi2m = document.createElement('input');
        inputi2m.type = 'hidden';
        inputi2m.name = "info2mail";
        inputi2m.value =  document.getElementById("info2mail0").checked;
        form.appendChild(inputi2m);
    }else if (type=='mychpass'){
        var da=validatenull('ppsw0');
        da+=validatenull('ppsw1');

        var pass1 = document.getElementById('ppsw1');
        var pass2 = document.getElementById('ppsw2');
        //alert(pass1.value+'-'+pass2.value);return;
        if (pass1.value!=pass2.value) pass2.value='';

        da+=validatenull('ppsw2');

        if (da!=0) return;

        var input = document.createElement('input');
        input.type = 'hidden';
        input.name = "md5passold";
        input.value = $.MD5($('#ppsw0').val());
        form.appendChild(input);

    }

    var passel=$(passid);
    if (passel.length) {
        var input = document.createElement('input');
        input.type = 'hidden';
        input.name = "md5pass";
        input.value = $.MD5($(passid).val());
        form.appendChild(input);
    }
    var input2 = document.createElement('input');
    input2.type = 'hidden';
    input2.name = "type";
    input2.value = type;
    form.appendChild(input2);
    form.submit();

}
function mysubmitajax(formid,passid,type,pelem) {
    //var e = $(element);//element not element.id
    //var form = e.parent('form').get(0);//.get(0) added

    var form = document.getElementById(formid);//$(formid);
    var params = $('#'+formid).serializeArray();
    if (type=='myparameter'){
        var da=validatenull('pnamefirst');
        da+=validatenull('pnamelast');
        da+=validatenull('pnamefirstlat');
        da+=validatenull('pnamelastlat');
        da+=validatenull('ppersonal_n');
        da+=validatedate('pbirthday');
        //da+=validateradio('pgender');
        da+=validatephone('pphone');
        da+=validatemail('pemail');

        if (da!=0) return;
        params.push({name: "phonepre",value:$("#pphone").intlTelInput("getSelectedCountryData").dialCode});


        var s1=$("#pbirthday").val().split("-");
        params.push({name:"birthday2",value:s1[2]+'-'+s1[1]+'-'+s1[0]});

        params.push({name:"info2mail",value:document.getElementById("info2mail0").checked});

    }else if (type=='mychpass'){
        var da=validatenull('ppsw0');
        da+=validatenull('ppsw1');

        var pass1 = document.getElementById('ppsw1');
        var pass2 = document.getElementById('ppsw2');
        //alert(pass1.value+'-'+pass2.value);return;
        if (pass1.value!=pass2.value) pass2.value='';

        da+=validatenull('ppsw2');

        if (da!=0) return;


        params.push({name:"md5passold",value:$.MD5($('#ppsw0').val())});

    }else if (type=='mypasswordre'){
        var da=validatemail('usrname2');

        if (da!=0) return;

        //$(modal1).modal("hide");
        //$("#"+type).modal("hide");
    }

    var passel=$(passid);
    if (passel.length) {
        params.push({name:"md5pass",value:$.MD5($(passid).val())});
    }

    params.push({name: 'type', value: type});


    //form.submit();
    //var params = form.serializeArray();


    $.ajax({
        type: "POST",
        url: "getjsondata",
//        contentType: "application/json; charset=UTF-8",
        cache: false,
        data: params,
        dataType: 'json',
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        success: function (response) {
            if (type=='mypasswordre'){
                $("#"+type).modal("hide");
            }
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




function kuku55(){

    $('#t2').css('display','block');
    alert("kuku55");
}


function myready(){
    mylegendstart();
    $(".myphone").intlTelInput({

        // allowDropdown: false,
        //autoHideDialCode: false,
        //autoPlaceholder: "aggressive",
        // dropdownContainer: document.body,
        // excludeCountries: ["us"],
        // formatOnDisplay: false,
        // geoIpLookup: function(callback) {
        //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
        //     var countryCode = (resp && resp.country) ? resp.country : "";
        //     callback(countryCode);
        //   });
        // },
        // hiddenInput: "full_number",
        initialCountry: "ge",
        // localizedCountries: { 'de': 'Deutschland' },
        // nationalMode: false,
        // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
        // placeholderNumberType: "MOBILE",
        preferredCountries: ['ge', 'ru'],
        separateDialCode: true,
        //utilsScript: "/js/utils.js",
    });
    $.datePicker.defaults.templates={
        widget: '<div class="jquery-datepicker">',
        header: '<div class="box-row row-header"><div class="header-actions"><div class="header-action action-down"></div><div class="header-title">{title}</div><div class="header-action action-up"></div></div></div>'
    }
    $.datePicker.defaults.callbacks={
        onCreate: function(calendar) {
            // Do nothing
        },
        onShow: function(calendar) {
            // Do nothing
        },
        onViewDecade: function(calendar, date) {
            return true;
        },
        onViewYear: function(calendar, date) {
            return true;
        },
        onViewMonth: function(calendar, date) {
            return true;
        },
        onChangeDecade: function(calendar, date, direction) {
            return true;
        },
        onChangeYear: function(calendar, date, direction) {
            return true;
        },
        onChangeMonth: function(calendar, date, direction) {
            return true;
        },
        onChangeDay: function(calendar, date, direction) {
            var id=calendar.options.element[0].id;
            if (id=='tdate1'){
                var dat=new Date(date);
                var today = new Date();
                if (dat.getTime()<today.getTime()){
                    //document.getElementById('myerrortxt').innerHTML = "Date error";
                    //$('#myerror').modal({backdrop: 'static'});
                    //return;
                    dat=today;
                    var dd = dat.getDate();
                    var mm = dat.getMonth() + 1;
                    var y = dat.getFullYear();

                    var someFormattedDate = dd + '-'+ mm + '-'+ y;


                    $("#tdate1").val(someFormattedDate);
                }


                dat.setDate(dat.getDate() + 340);
               // Formatting to dd/mm/yyyy :

                var dd = dat.getDate();
                var mm = dat.getMonth() + 1;
                var y = dat.getFullYear();

                var someFormattedDate = dd + '-'+ mm + '-'+ y;


                $("#tdate2").val(someFormattedDate);
            }

            return true;
        },
        onCheckCell: function(cell, date, type) {
            return false;
        },
        onRenderCell: function(cell, date, type) {
            // Do nothing
        },
        onHide: function(calendar) {
var el=calendar.options.element[0];
/*
var nammm=elll.name;
            var el=document.getElementById((this).name);
            //var el=document.getElementById("birthday");*/
            mylegend( el.name,el.value);
            //el.style.backgroundColor='#fff';
            el.className=el.className.replace(" invalid","");
        }
    }
    $("div").hover(function(e){
        if (borderda0) {
            e = e || window.event;

            var pageX = e.pageX;
            var pageY = e.pageY;
            $(this).css('box-shadow', 'inset 0px 0px 0px 3px #00f');
            //$("#tablo").html(pageX+"="+pageY)
        }
//    $(this).css("border", "1px solid black");
    }, function(){
        if (borderda0)
            $(this).css('box-shadow', 'inset 0px 0px 0px 1px #f00');
        // $(this).css("border", "none");
    });
    $("input").hover(function(e){
        if (borderda0) {
            e = e || window.event;

            var pageX = e.pageX;
            var pageY = e.pageY;
            $(this).css('box-shadow', 'inset 0px 0px 0px 3px #00f');
            //$("#tablo").html(pageX+"="+pageY)
        }
//    $(this).css("border", "1px solid black");
    }, function(){
        if (borderda0)
            $(this).css('box-shadow', 'inset 0px 0px 0px 1px #f00');
        // $(this).css("border", "none");
    });
    $("div").mousedown(mytablo);
    $("input").mousedown(mytablo);
    $(".btn").mousedown(mytablo);

}

//-------------------------------------------------
function showTab(n) {
    // This function will display the specified tab of the form...
    var x = document.getElementsByClassName("tab");
    x[n].style.display = "block";
    //... and fix the Previous/Next buttons:
    if (n == 0) {
        document.getElementById("prevBtn").style.display = "none";
    } else {
        document.getElementById("prevBtn").style.display = "inline";
    }
    if (n == (x.length - 1)) {
        document.getElementById("nextBtn").innerHTML = nextbtn2;
    } else {
        document.getElementById("nextBtn").innerHTML = nextbtn;
    }
    //... and run a function that will display the correct step indicator:
    fixStepIndicator(n)
}

function nextPrev(n) {
    // This function will figure out which tab to display
    var x = document.getElementsByClassName("tab");
    // Exit the function if any field in the current tab is invalid:
    if (n>0&&!validateForm()) return false;

    // if you have reached the end of the form...
    if (currentTab+n >= x.length) {
        // ... the form gets submitted:

        tabsubmitajax();
        return false;
    }

    // Hide the current tab:
    x[currentTab].style.display = "none";
    // Increase or decrease the current tab by 1:
    currentTab = currentTab + n;

    // Otherwise, display the correct tab:
    showTab(currentTab);
}
function fixStepIndicator(n) {
    var i, x = document.getElementsByClassName("step");

    // This function removes the "active" class of all steps...

    for (i = 0; i < x.length; i++) {
        x[i].className = x[i].className.replace(" active", "");
    }
    //... and adds the "active" class on the current step:
    x[n].className += " active";
}
function openpartab(tab){
    $('#mypolices').css('display', 'none');
    $('#setpassword').css('display', 'none');
    $('#setparams').css('display', 'none');

    $("#mypolicesh").removeClass("tabheader");
    $("#setpasswordh").removeClass("tabheader");
    $("#setparamsh").removeClass("tabheader");

    $(tab+"h").addClass("tabheader");

    $(tab).css('display', 'block');
}
function mypost(nam,val){
    var form = document.getElementById('postform');
    var inputp = document.createElement('input');
    inputp.type = 'hidden';
    inputp.name = nam;
    inputp.value = val;
    form.appendChild(inputp);
    form.submit();
}
function getpersonajax(nn) {

    var params = [{name: 'type', value: 'getpersondata'}];
    params.push({name: nn, value: $("#"+nn).val()});




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
            if (response.result=='ok'){
                $("#t2namefirstlat").val(response.namefirstlat);mylegend("t2namefirstlat",response.namefirstlat);
                $("#t2namelastlat").val(response.namelastlat);mylegend("t2namelastlat",response.namelastlat);
                var s1=response.birthday.split("-");
                $("#t2birthday").val(s1[2]+'-'+s1[1]+'-'+s1[0]);mylegend("t2birthday",response.birthday);
                if (response.gender=='male'){
                    $("#t2male").prop("checked", true);
                    $("#t2female").prop("checked", false);
                }else{
                    $("#t2male").prop("checked", false);
                    $("#t2female").prop("checked", true);
                }

            }

        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status+"\n"+thrownError);
            //alert(thrownError);
        }
    });

}
function getcarajax(nn) {

    var params = [{name: 'type', value: 'getcardata'}];
    params.push({name: nn, value: $("#"+nn).val()});




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
            if (response.result=='ok'){
                $("#tcarvin").val(response.vincode);mylegend("tcarvin",response.carvin);
                $("#tmarca").val(response.mark);
                syncList1.sync("tmarca","tmodel");
                $("#tmodel").val(response.modelid);$("#tmodel").css('color', '#000000');
                $("#tyear").val(response.year);$("#tyear").css('color', '#000000');
            }

        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status+"\n"+thrownError);
            //alert(thrownError);
        }
    });

}

function changeselect(el){
    el.style.color="#000000";
}

function changeselect830(el){
    var $divs = $("div.my830");
    if (el.value=="1"){

        //parseInt parseFloat()

            var numericallyOrderedDivs1 = $divs.sort(function (a, b) {

                return parseFloat($(a).attr("pric")) > parseFloat($(b).attr("pric"))? 1 : -1;
            });

    }else    if (el.value=="2"){

        //parseInt parseFloat()

        var numericallyOrderedDivs1 = $divs.sort(function (a, b) {

            return parseFloat($(a).attr("pric")) < parseFloat($(b).attr("pric"))? 1 : -1;
        });

    }else {


        var numericallyOrderedDivs1 = $divs.sort(function (a, b) {

            return $(a).attr("nam") > $(b).attr("nam")? 1 : -1;
        });

    }
    $("#container830").html(numericallyOrderedDivs1);

}
function myshowtab(k){
    $('#tabForm0').css('display', 'block');
    $('#proposals0').css('display', 'none');
    var x = document.getElementsByClassName("tab");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
     currentTab=k;
    showTab(currentTab);
}
function showpropos(i){
    if (i==0){
        $('#propos0').css('display', 'none');
        $('#propos1').css('display', 'block');
    }else{
        $('#propos0').css('display', 'block');
        $('#propos1').css('display', 'none');
    }

}