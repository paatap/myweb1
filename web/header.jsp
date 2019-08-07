<%
/*
if (request.getMethod().toLowerCase().equals("get")){
    System.out.println("!!!!!!!!!!!!!---get");
    if (request.getQueryString()!=null) {
        request.getSession().setAttribute("registerrrr","kukuda");
        //response.sendRedirect("/");
        request.getRequestDispatcher("/").forward(request,response);
    }
}*/
    System.out.println(request.getMethod());
    //mypack.titles.reloadlang();
    mypack.titles tit = new mypack.titles();
    String lang = request.getParameter("lang");
    if (lang == null) {
        Object o = request.getSession().getAttribute("lang");
        if (o != null) lang = o.toString();
    }
    if (lang != null&&!lang.equals("exit")) {

        if (lang.equals("ru")) {
            tit.langid = 1;

        } else if (lang.equals("en")) {
            tit.langid = 2;

        } else {
            tit.langid = 0;

        }
        request.getSession().setAttribute("lang", lang);
    }
    mypack.myweb1java myw=new mypack.myweb1java(tit,request,response,lang);
%>
<div class="container1200" id="myvert" style="pointer-events: none;display:none;width:100%;position: fixed;padding-right: 15px; padding-left: 15px;text-align: right;left: 50%;transform: translateX(-50%);">
    <div class="row">
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
        <div class="col-1"><div style="opacity: 0.3;height: 1000px;background-color: #aed0ea">.</div></div>
    </div>
</div>

<div class="container-fluid container1200">
    <form  id="postform" name="postform" action="<%=myw.action%>" method="post" ></form>

    <div style="height:10%;    min-height: fit-content;" >
        <div class="row mybig" style="height: 80px">

            <div class="col-12 col-md-5" style="margin: auto;font-size: 14px;font-family: bpg_mrgvlovani_caps_2010;">

                <div style="float: left;min-width: fit-content;padding-right: 10px;"><a class="colorbl" href="#" onclick="mypost('jsptype','about')"><%=tit.gettitle0("_about")%></a></div>
                <div style="float: left;min-width: fit-content;padding-right: 10px;"><a class="colorbl" href="#" onclick="mypost('jsptype','index')"><%=tit.gettitle0("_insurance")%></a></div>
                <div style="float: left;min-width: fit-content;"><a class="colorbl" href="#"><%=tit.gettitle0("_partner")%></a></div>
            </div>

            <div class="col-12 col-md-2" style="margin: auto;">
                <div style="text-align: center;   margin-left: -100%;    margin-right: -100%;">
                    <img src="icons/logo.png" onclick="mypost('jsptype','index')"/>

                </div>
            </div>
            <div class="col-6 col-md-3" style="margin: auto;">

                <div style="float: right;padding-left: 20px;"><a class="colorgr" href="#" onclick="mypost('lang','ru')">RU</a></div>
                <div style="float: right;padding-left: 20px;"><a class="colorgr" href="#" onclick="mypost('lang','en')">EN</a></div>
                <div style="float: right;padding-left: 20px;"><a class="colorgr" href="#" onclick="mypost('lang','ge')">GE</a></div>
            </div>
            <div class="col-6 col-md-2" style="margin: auto;">
                <%=myw.mylogin%>
            </div>
        </div>
        <div class="row mysmall" style="height: 80px">

            <div class="col-3" style="margin: auto;">


                <div class="btn" style="float: left;text-align: right;">
                    <img src="icons/menu.svg"/>
                </div>


            </div>

            <div class="col-6" style="margin: auto;">
                <div style="width:100%;text-align: center;">
                    <img src="icons/logo-min.png" onclick="mypost('jsptype','index')"/>

                </div>
            </div>
            <div class="col-3" style="margin: auto;text-align: right;">
                <div class="btn" style="text-align: right;background-color: #574DFA;">
                    <img src="icons/usericon.svg" onclick="$('#mylogin').modal({backdrop: 'static'});"/>
                </div>

            </div>
        </div>
    </div>
</div>
