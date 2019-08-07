
document.documentElement.classList.remove("no-js");
document.documentElement.classList.add("js");
//-----------------------------------------------------------------------------------------------------
function mybuttonclick(str,par)
{
    //lang = document.getElementById("lang");
    document.my_table.buttonclick.value=str;
    document.my_table.buttonparam.value=par;
    document.my_table.submit();


    //document.location=$(this).val();

    //  document.location=lang.value;

    /*  form = document.createElement('form');
     form.action = '';
     form.method = 'post';

     lang = document.getElementById("lang");

     form.innerHTML = '<input name="buttonclick" id="buttonclick" value="str">';
     form.innerHTML = '<input name="buttonparam" id="buttonparam" value="lang123">';

     //form.getElementsByTagName("buttonparam")[0]=lang[0];

     // the form must be in the document to submit it
     document.body.append(form);

     form.submit();*/
}
function kuku2() {
    document.location="?lang=en";
}
function kuku3() {
    //document.location="/";
    //window.location.href = "/myweb1";
    openWindowWithPost("",'height=300px,width=300px,top=200px,left=500px,scrollbars=no,sizable=yes,toolbar=no,statusbar=no','title','kujku');
}
function openWindowWithPost(url, windowoption, name, params)
{
    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", url);
    form.setAttribute("target", name);
    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = "PARAM";
    input.value = params;
    form.appendChild(input);
    /*for (var i in params) {
     if (params.hasOwnProperty(i)) {
     var input = document.createElement('input');
     input.type = 'hidden';
     input.name = i;
     input.value = params[i];
     form.appendChild(input);
     }
     }*/
    document.body.appendChild(form);
    //window.open(url, name, windowoption);


    form.submit();
    alert("inside openpost");
    document.body.removeChild(form);
}
function kuku() {

    var params = {};
    params.language = "kukuku";

    $.ajax({
        type: "POST",
        url: "",
        cache: false,
        data: params,
        dataType: 'html',
        success: function (response) {
            if (response.status === 'OK') {
                window.location.href = "/"; //window.location.href;
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
    });
}
//-----------------------------------------------------------------------------------------------------


// Out advancer buttons
var pnAdvancerLeft = document.getElementById("pnAdvancerLeft");
var pnAdvancerRight = document.getElementById("pnAdvancerRight");


var pnProductNav = document.getElementById("pnProductNav");

var pnProductNavContents = document.getElementById("pnProductNavContents");

onresize1();



pnAdvancerLeft.addEventListener("click", function() {

    pnProductNavContents.scrollLeft -= 100;

});

pnAdvancerRight.addEventListener("click", function() {
    pnProductNavContents.scrollLeft += 100;
});


var rtime;
var timeout = false;
var delta = 50;
function onresize() {

    if (wid!=pnProductNav.clientWidth < 1200)
        onresize1();
    wid=pnProductNav.clientWidth < 1200;
    /*
     rtime = new Date();
     if (timeout === false) {
     timeout = true;
     setTimeout(resizeend, delta);
     }*/
}

function resizeend() {
    /*if (new Date() - rtime < delta) {
     setTimeout(resizeend, delta);
     } else {
     timeout = false;
     onresize1();
     }*/

}
var wid;
function onresize1() {
    //pnProductNavContents.get(0).scrollHeight

    //if (determineOverflow(pnProductNavContents, pnProductNav)=="none")
    if (pnProductNav!=null&&pnProductNavContents!=null) {
        //if (pnProductNav.scrollHeight > pnProductNavContents.scrollHeight) {
        //if (pnProductNav.clientWidth < pnProductNavContents.clientWidth)   {
        if (pnProductNav.clientWidth < 1200)   {
            pnAdvancerLeft.style.opacity = 0.6;
            pnAdvancerRight.style.opacity = 0.6;
            pnProductNavContents.style.display="block";

            pnProductNavContents.style.width="100%";
            pnProductNavContents.style.margin="unset";
            if (ismobile()){
                pnProductNavContents.style.overflowX="auto";
                pnProductNav.style.overflowX="auto";
            }else{
                pnProductNavContents.style.overflowX="hidden";
                pnProductNav.style.overflowX="hidden";
            }

        } else {
            pnAdvancerLeft.style.opacity = 0;
            pnAdvancerRight.style.opacity = 0;
            pnProductNavContents.style.display="table";

            pnProductNavContents.style.width="auto";
            pnProductNavContents.style.margin="auto";

        }
    }
}


function ismobile(){
    var user=navigator.userAgent.toLowerCase();
    if (user.includes("android")||user.includes("iphone")) return true;
    return false;
}

//mymessage("allow new user?",null,"unmymessage()");
//-----------------------------------------------------------------------------------------------------------------------------