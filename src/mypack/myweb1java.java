package mypack;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sun.deploy.net.HttpRequest;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.Enumeration;

import static mypack.functions.log;

/**
 * Created by user on 6/17/19.
 */
public class myweb1java {

    static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(myweb1java.class);
    static int k=0;
    void initlog(String warname){k=1;
        System.out.println("warname="+warname);
        if (warname == null) {

        }else if (warname.equals("ROOT")){

            LogManager.getRootLogger().removeAllAppenders();
            ConsoleAppender console = new ConsoleAppender();
            String PATTERN = "%d{yyyy-MM-dd HH:mm:ss} %c{1}:%L - %m%n";
            console.setLayout(new PatternLayout(PATTERN));
            console.setThreshold(Level.INFO);
            console.activateOptions();
            //add appender to any Logger (here is root)
            Logger.getRootLogger().addAppender(console);

        }else{

        }

    }

    public String namefirst="";
    public String namefirst1="";
    public String namelast="";
    public String namefirstlat="";
    public String namelastlat="";
    public String userid;
    public String useridreg;
    public String email="";
    public String mylogin;
    public String myready="";
    public String personal_n="";
    public String birthday="";
    public String tel="";
    public String gender="";
    public String info2mail="";
    public String jsptype="index";
    public String action="/myweb1/";
    public String cars1="",cars2="",year="";
    public String par(String name,String val,String res){
        if (name.equals(val)) return res;
        else return "";
    }

    public myweb1java(titles tit, HttpServletRequest request, HttpServletResponse response,String lang) {

        System.out.println("-----begin-----------"+request.getRequestURI());
        userid=(String)request.getSession().getAttribute("userid");
        namefirst=functions.requestgetParameter(request,"namefirst");
        if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
        namelast=functions.requestgetParameter(request,"namelast");
        namefirstlat=functions.requestgetParameter(request,"namefirstlat");
        namelastlat=functions.requestgetParameter(request,"namelastlat");
        email=functions.requestgetParameter(request,"username");

//        jsptype=(String)request.getSession().getAttribute("jsptype");
//        if (jsptype.equals("")) jsptype="index";
//String jsptype2 = functions.requestgetParameter(request, "jsptype");
//if (!jsptype2.equals("")) jsptype=jsptype2;
        String lang0 = request.getParameter("lang");
        if (lang0!=null&&!lang0.equals("exit")){
            jsptype=(String)request.getSession().getAttribute("jsptype");
            if (jsptype==null) jsptype="";
            //String jsptype2 = functions.requestgetParameter(request, "jsptype");
            //if (!jsptype2.equals("")) jsptype=jsptype2;
        }else {
            jsptype = functions.requestgetParameter(request, "jsptype");
            request.getSession().setAttribute("jsptype",jsptype);
        }
        System.out.println("jsptype="+jsptype);

        mylogin="<input type=\"button\" class=\"btn  mybtn2\" style=\"height:38px;text-align: center;width:100%;margin: 0px;\" value=\""+
                tit.gettitle0("_login")+"\" data-toggle=\"modal\" data-target=\"#mylogin\" data-backdrop=\"static\"/>";
        if (k==0) initlog(functions.getwarnamereq(request));
if (functions.getwarnamereq(request).equals("ROOT")) action="/";
        //import org.apache.log4j.Logger;
/*        String war = mypack.functions.getwarnamereq(request);


        System.out.println(war);

        log(logger, "This is warn : 999990099999");
        log(logger, "This is error : 999900999999999");
        log(logger, "This is fatal : 999990099999999999");


        log(logger, "funlog0000");
        System.out.println("11111111111111111-------------");
*/
        mypack.functions.printvars(request);
        String comm = functions.requestgetParameter(request, "type");
        String reg = functions.requestgetParameter(request, "register");
        try {
            HttpPost http = new HttpPost("http://192.168.18.43:9080/CompareServices/mainService");
            if (comm.equals("mylogin")) {


                email=functions.requestgetParameter(request, "usrname");
                String ss = "  {\n\"command\": \"login\",\n" +
                        "  \"user\": \"" +  email + "\",\n" +
                        "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\"\n"
                        + "}";//csid

                log(logger, ss);
                StringEntity entity = new StringEntity(ss);
                http.setEntity(entity);
                JsonElement el = functions.request(http);
                JsonObject ob=el.getAsJsonObject();
                if (el==null){

                }else {
                    String res = functions.jsonget(ob, "result");
                    if (res.equals("ok")){
                         namefirst=functions.jsonget(ob, "namefirst");
                        if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
                         namelast=functions.jsonget(ob, "namelast");


                         userid=functions.jsonget(ob, "userid");
                         request.getSession().setAttribute("namefirst",namefirst);
                         request.getSession().setAttribute("namelast",namelast);


                         request.getSession().setAttribute("userid",userid);
                         request.getSession().setAttribute("username",email);
                    }else{
                        myready="document.getElementById('myerrortxt').innerHTML = '"+tit.gettitle0("_"+res)+"';$('#myerror').modal({backdrop: 'static'});";
                    }
                }


            }
            /*else   if (comm.equals("myparameter")) {


                String ss = "  {\n  \"command\": \"setparameters\",\n" +
                        "  \"userid\": \"" +  userid + "\"";

                Enumeration ee=request.getParameterNames();

                while (ee.hasMoreElements())
                {
                    String s1=(String) ee.nextElement();
                    String s2=request.getParameter(s1);
                    if (s1.equals("type")) continue;
                    byte[] bytes = s2.getBytes(StandardCharsets.ISO_8859_1);
                    s2 = new String(bytes, StandardCharsets.UTF_8);
                    ss+=",\n  \""+s1+"\": \"" + s2 + "\"";
                }

                //  "  \"user\": \"" + functions.requestgetParameter(request, "usrname") + "\",\n" +
                //  "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\"\n"
                ss+= "\n}";//csid

                log(logger, ss);
                StringEntity entity = new StringEntity(ss);
                http.setEntity(entity);
                JsonElement el = functions.request(http);
                JsonObject ob=el.getAsJsonObject();
                if (el==null){

                }else {
                    String res = functions.jsonget(ob, "result");
                    if (res.equals("ok")){
                        //request.getSession().setAttribute("myinfo","_setparametersok");
                        //String ss1=(String)request.getSession().getAttribute("myinfo");
                        //System.out.println(ss1+"="+request.getSession().getId());
                        //response .sendRedirect("index.jsp");
                        //request.getRequestDispatcher("index.jsp").forward(request,response);
                        myready="document.getElementById('mymessagetxt').innerHTML = '"+tit.gettitle0("_oksetparameters")+"';$('#mymessage').modal({backdrop: 'static'});";
                        return;
                    }else
                    myready="document.getElementById('mymessagetxt').innerHTML = '"+tit.gettitle0("_"+res)+"';$('#mymessage').modal({backdrop: 'static'});";

                }


            }*/
            else if (jsptype.equals("getcasco")) {
                String ss = "  {\n  \"command\": \"getcasco\"";
                if (userid!=null)  ss+=",\n  \"userid\": \"" + userid + "\"\n" ;

                Enumeration ee=request.getParameterNames();

                while (ee.hasMoreElements())
                {
                    String s1=(String) ee.nextElement();
                    String s2=request.getParameter(s1);
                    if (s1.equals("type")) continue;
                    byte[] bytes = s2.getBytes(StandardCharsets.ISO_8859_1);
                    s2 = new String(bytes, StandardCharsets.UTF_8);
                    //if (s1.startsWith("t2")) s1=s1.substring(2)+"2";
                    //else
                    if (s1.startsWith("t")) s1=s1.substring(1);
                    ss+=",\n  \""+s1+"\": \"" + s2 + "\"";
                }

                //  "  \"user\": \"" + functions.requestgetParameter(request, "usrname") + "\",\n" +
                //  "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\"\n"
                ss+= "\n}";//csid

                log(logger, ss);
                StringEntity entity = new StringEntity(ss);
                http.setEntity(entity);
                JsonElement el =  functions.request(http);
                JsonObject ob=el.getAsJsonObject();
                if (el==null){

                }else {
                    String res = functions.jsonget(ob, "result");
                    System.out.println("11111111111111111111111111111111111111");
                }
            }
            else if (jsptype.equals("car")||jsptype.equals("liability")) {
                getparameters( tit, http, request);
                String ss = "  {\n\"command\": \"getcars\"\n"
                        + "}";//csid

                log(logger, ss);
                StringEntity entity = new StringEntity(ss);
                http.setEntity(entity);
                JsonElement el = functions.request(http);
                JsonObject ob = el.getAsJsonObject();









                 ss = "  {\n\"command\": \"getcars\"\n"
                        + "}";//csid

                log(logger, ss);
                 entity = new StringEntity(ss);
                http.setEntity(entity);
                 el = functions.request(http);
                 ob = el.getAsJsonObject();
                if (el == null) {

                } else {
                    JsonArray s2 = ob.getAsJsonArray("cars");
                    cars1="";cars2="";
                    String model=tit.gettitle0("_model");
                    String car1a="";
                    for (int i=0;i<s2.size();i++){
                        JsonObject elt=s2.get(i).getAsJsonObject();
                        String car1t=elt.get("mark").getAsString();
                        if (!car1t.equals(car1a)){
                            cars1+="<option>"+car1t+"</option>";car1a=car1t;
                            if (!cars2.equals("")) cars2+="},";
                            cars2+="\n'"+car1t+"':{'disable':'"+model+"'";
                        }
                        boolean da=!elt.get("supported").getAsString().equals("f");
                        if (da) cars2+=",'"+elt.get("id").getAsString()+"':'"+elt.get("model").getAsString()+"'";
                        else cars2+=",'notsupported"+elt.get("id").getAsString()+"':'"+elt.get("model").getAsString()+"'";
                                            /*
                    'bmw':{
                        'disable':'model',
                        '1':'111',
                        '2':'222'
                    },

                    'mersedes':{
                        'disable':'model',
                        '3':'333'
                    },
                    */

                    }
                    cars2+="}";


                }
                year="";
                int yy=functions.getnowyear();
                for (int i=0;i<50;i++){
                    year+="<option>"+(yy-i)+"</option>";
                }
            }
            else if (jsptype.equals("parameters")){
                /*if (comm.equals("mychpass")){
                    addcomm="openpartab('#setpassword');";
                    String ss = "  {\n\"command\": \"changepassword\",\n" +
                            "  \"passold\": \"" + functions.requestgetParameter(request, "md5passold") + "\",\n" +
                            "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\",\n" +
                            "  \"userid\": \"" + userid + "\"\n"
                            + "}";//csid

                    log(logger, ss);
                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el = functions.request(http);
                    JsonObject ob = el.getAsJsonObject();
                    if (el == null) {

                    } else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")) {
                            myready = "document.getElementById('mymessagetxt').innerHTML = '" + tit.gettitle0("_okpasschange") + "';$('#mymessage').modal({backdrop: 'static'});";
                        } else {
                            myready = "document.getElementById('myerrortxt').innerHTML = '" + tit.gettitle0("_" + res) + "';$('#myerror').modal({backdrop: 'static'});";
                        }
                    }
                }else*/
                if (userid==null){
                    response.sendRedirect("index.jsp");
                }else
                {
                    getparameters( tit, http, request);
                }
            }
            else if (comm.equals("")&&!reg.equals("")&&jsptype.equals("")) {


                    String ss = "  {\n\"command\": \"register2\",\n" +
                            "  \"link\": \"" + reg + "\"\n" +
                             "}";//csid

                    log(logger, ss);
                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el =  functions.request(http);
                    JsonObject ob = el.getAsJsonObject();
                    if (el == null) {

                    } else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")) {
                            namefirst = functions.jsonget(ob, "namefirst");
                            if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
                            namelast = functions.jsonget(ob, "namelast");
                            useridreg = functions.jsonget(ob, "userid");
                            request.getSession().setAttribute("namefirst", namefirst);
                            request.getSession().setAttribute("namelast", namelast);
                            request.getSession().setAttribute("useridreg", useridreg);
                            myready = "document.getElementById('putpassword').innerHTML = '" +namefirst+" "+namelast+"<br>"+ tit.gettitle0("_putpassword") + "';$('#mypass').modal({backdrop: 'static'});";
                        } else {
                            myready = "document.getElementById('myerrortxt').innerHTML = '" + tit.gettitle0("_" + res) + "';$('#myerror').modal({backdrop: 'static'});";
                        }
                    }


            }else if (comm.equals("myregister3")) {
                    useridreg=(String)request.getSession().getAttribute("useridreg");
                    if (useridreg==null){
                        System.out.println("useridreg null");
                    }else {
                        String ss = "  {\n\"command\": \"register3\",\n" +
                                "  \"userid\": \"" + useridreg + "\",\n" +
                                "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\"\n" +
                                "}";//csid

                        log(logger, ss);
                        StringEntity entity = new StringEntity(ss);
                        http.setEntity(entity);
                        JsonElement el =  functions.request(http);
                        JsonObject ob = el.getAsJsonObject();
                        if (el == null) {

                        } else {
                            String res = functions.jsonget(ob, "result");
                            if (res.equals("ok")) {
                                namefirst = functions.jsonget(ob, "namefirst");
                                if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
                                namelast = functions.jsonget(ob, "namelast");
                                userid = functions.jsonget(ob, "userid");
                                email = functions.jsonget(ob, "username");
                                request.getSession().setAttribute("namefirst", namefirst);
                                request.getSession().setAttribute("namelast", namelast);
                                request.getSession().setAttribute("userid", userid);
                                request.getSession().setAttribute("username", email);
                                namefirstlat=functions.jsonget(ob, "namefirstlat");
                                namelastlat=functions.jsonget(ob, "namelastlat");
                                request.getSession().setAttribute("namefirstlat",namefirstlat);
                                request.getSession().setAttribute("namelastlat",namelastlat);
                                myready = "document.getElementById('mymessagetxt').innerHTML = '" + tit.gettitle0("_register3ok") + "';$('#mymessage').modal({backdrop: 'static'});";

                            } else {
                                myready = "document.getElementById('myerrortxt').innerHTML = '" + tit.gettitle0("_" + res) + "';$('#myerror').modal({backdrop: 'static'});";
                            }
                        }
                    }

            }else if (comm.equals("myregister")) {
                String ss = "  {\n  \"command\": \"register\"" ;

                Enumeration ee=request.getParameterNames();

                while (ee.hasMoreElements())
                {
                    String s1=(String) ee.nextElement();
                    String s2=request.getParameter(s1);
                    if (s1.equals("type")) continue;
                    byte[] bytes = s2.getBytes(StandardCharsets.ISO_8859_1);
                    s2 = new String(bytes, StandardCharsets.UTF_8);
                    ss+=",\n  \""+s1+"\": \"" + s2 + "\"";
                }

                      //  "  \"user\": \"" + functions.requestgetParameter(request, "usrname") + "\",\n" +
                      //  "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\"\n"
                      ss+= "\n}";//csid

                log(logger, ss);
                StringEntity entity = new StringEntity(ss);
                http.setEntity(entity);
                JsonElement el =  functions.request(http);
                JsonObject ob=el.getAsJsonObject();
                if (el==null){

                }else {
                    String res = functions.jsonget(ob, "result");
                        myready="document.getElementById('mymessagetxt').innerHTML = '"+tit.gettitle0("_"+res)+"';$('#mymessage').modal({backdrop: 'static'});";

                }
            }else if (lang!=null&&lang.equals("exit")){
                userid=null;
                namefirst="";
                namefirst1="";
                namelast="";
                email="";
                request.getSession().removeAttribute("userid");
                request.getSession().removeAttribute("namefirst");
                request.getSession().removeAttribute("namelast");
                request.getSession().removeAttribute("username");
            }
            else{
                System.out.println("qqqqqqqqqqqqqqqqqqqqqqq");
                userid=(String)request.getSession().getAttribute("userid");
                namefirst=(String)request.getSession().getAttribute("namefirst");
                if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
                namelast=(String)request.getSession().getAttribute("namelast");
                email=(String)request.getSession().getAttribute("username");
            }
        } catch (Exception e) {
            log(logger, "eeeeeeeeeerrrr================" + e.toString());
            e.printStackTrace();

        }
//        String ss=(String)request.getSession().getAttribute("myinfo");//,"setparametersok");
//        System.out.println("="+request.getSession().getId());
//        if (ss!=null){
//            System.out.println("444444444444444444");
//            request.getSession().removeAttribute("myinfo");
//            myready="document.getElementById('mymessagetxt').innerHTML = '"+tit.gettitle0(ss)+"';$('#mymessage').modal({backdrop: 'static'});";
//
//        }else System.out.println("myinfo is nulllll");
        if (userid!=null){
/*            mylogin="<div style='display: table-cell;vertical-align: middle;'>"+namefirst+"</div>"+
            "        <div class=\"dropdown\" style='display: table-cell;    padding-left: 0px;'>\n" +
                    "             <button class=\"dropbtn\" style='background-color: #574DFA;color:#FFFFFF'>"+namefirst.substring(0,1)+"</button>\n" +
                    "            <div class=\"dropdown-content\">\n" +
                    "                <div>"+namefirst+" "+namelast+"<br>"+email+"</div>\n" +
                    "                <a href=\"#\">"+tit.gettitle0("polices")+"</a>\n" +
                    "                <a href=\"#\">"+tit.gettitle0("settings")+"</a>\n" +
                    "                <a href=\"#\">"+tit.gettitle0("exit")+"</a>\n" +
                    "            </div>\n" +
                    "        </div>"
            ;*/
            mylogin="<div style='display: table-cell;vertical-align: middle;'>"+namefirst+"</div>" +
                    "<div style='display: table-cell;vertical-align: middle;'>"+
                    "            <ul class=\"rightmenu\">\n" +
                    "                <li>\n" +
                    "                    <a class='menuhead' href=\"#\" title=\""+namefirst+" "+namelast+"\">"+namefirst1+"</a>\n" +
                    "                    <ul>\n" +
                    "                        <li style='padding: 5px;'>"+
                    "<div style=\"font-size: 16px;font-family: bpg_mrgvlovani_caps_2010;\">"+namefirst+" "+namelast+"</div>" +
                    "<div style=\"font-size: 11px;\">"+email+"</div></li>\n" +
                    "                        <li><a href=\"#\">"+tit.gettitle0("_polices")+"</a></li>\n" +
                    "                        <li><a href=\"#\" onclick=\"mypost('jsptype','parameters')\">"+tit.gettitle0("_settings")+"</a></li>\n" +
                    "                        <li><a onclick=\"mypost('lang','exit')\">"+tit.gettitle0("_exit")+"<img src='icons/logout.svg' align='right' style='padding: inherit;'/></a></li>\n" +
                    "                    </ul>\n" +
                    "                </li>\n" +
                    "            </ul></div>";
        }

/*
try {
    BufferedReader br = request.getReader();
    System.out.println("----BODY-----");
    String line;
    while ((line = br.readLine()) != null) {
        System.out.println(line);
    }
}catch(Exception e){

}*/
    }


    void getparameters(titles tit,HttpPost http,HttpServletRequest request){
        if (userid==null) return;
        if (userid.equals("")) return;
        try {
            String ss = "  {\n\"command\": \"getparameters\",\n" +
                    "  \"userid\": \"" + userid + "\"\n"
                    + "}";//csid

            log(logger, ss);
            StringEntity entity = new StringEntity(ss);
            http.setEntity(entity);
            JsonElement el = functions.request(http);
            JsonObject ob = el.getAsJsonObject();
            if (el == null) {

            } else {
                String res = functions.jsonget(ob, "result");
                if (res.equals("ok")) {
                    namefirst = functions.jsonget(ob, "namefirst");
                    if (namefirst != null && namefirst.length() > 0) namefirst1 = namefirst.substring(0, 1);
                    namelast = functions.jsonget(ob, "namelast");
                    userid = functions.jsonget(ob, "userid");
                    personal_n = functions.jsonget(ob, "pid");
                    gender = functions.jsonget(ob, "gender");
                    email = functions.jsonget(ob, "username");
                    if (functions.jsonget(ob, "info2mail").startsWith("t"))
                        info2mail = "true";
                    else info2mail = "false";
                    String[] s2 = functions.jsonget(ob, "birthday").split("-");
                    if (s2.length > 1)
                        birthday = s2[2] + "-" + s2[1] + "-" + s2[0];
                    else birthday = "";
                    tel = functions.jsonget(ob, "phone");
                    request.getSession().setAttribute("namefirst", namefirst);
                    request.getSession().setAttribute("namelast", namelast);
                    request.getSession().setAttribute("userid", userid);
                    request.getSession().setAttribute("username", email);
                    namefirstlat=functions.jsonget(ob, "namefirstlat");
                    namelastlat=functions.jsonget(ob, "namelastlat");
                    request.getSession().setAttribute("namefirstlat",namefirstlat);
                    request.getSession().setAttribute("namelastlat",namelastlat);
                } else {
                    myready = "document.getElementById('myerrortxt').innerHTML = '" + tit.gettitle0("_" + res) + "';$('#myerror').modal({backdrop: 'static'});";
                }
            }
        }catch(Exception e){
            log(logger, "eeeeeeeeeerrrr================" + e.toString());
            e.printStackTrace();
        }
    }
    public String isregistered(String sda,String sno){
        if (userid==null) return sno; else return sda;
    }
    public String getstr(boolean da,String sda,String sno){
        if (da) return sda; else return sno;
    }
}
