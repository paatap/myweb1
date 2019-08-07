package mypack;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;

import static mypack.functions.getResult;
import static mypack.functions.log;

/**
 * Created by user on 6/25/19.
 */
@WebServlet(name = "getjsondata")
public class getjsondata extends HttpServlet {
    static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(getjsondata.class);
    public String addcomm="";
    public String namefirst="";
    public String namefirst1="";
    public String namelast="";
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //request.setCharacterEncoding("UTF-8");
        System.out.println("111111111getjsondata111111111111");


        userid=(String)request.getSession().getAttribute("userid");
        namefirst=(String)request.getSession().getAttribute("namefirst");
        if (namefirst!=null&&namefirst.length()>0) namefirst1=namefirst.substring(0,1);
        namelast=(String)request.getSession().getAttribute("namelast");
        email=(String)request.getSession().getAttribute("username");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            System.out.println(functions.printvars(request));
            String comm =  functions.requestgetParameter(request, "type");
            try {
                HttpPost http = new HttpPost("http://192.168.18.43:9080/CompareServices/mainService");
                mypack.titles tit = new mypack.titles();
                String ss2="";
                if (comm.equals("mychpass")) {
                    addcomm = "openpartab('#setpassword');";
                    String ss = "  {\n\"command\": \"changepassword\",\n" +
                            "  \"passold\": \"" + functions.requestgetParameter(request, "md5passold") + "\",\n" +
                            "  \"pass\": \"" + functions.requestgetParameter(request, "md5pass") + "\",\n" +
                            "  \"userid\": \"" + userid + "\"\n"
                            + "}";//csid

                    functions.log(logger, ss);
                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el = functions.request(http);
                    JsonObject ob = el.getAsJsonObject();
                    if (el == null) {

                    } else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")) {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_okpasschange")+"\"\n" +
                                    "}";
                        } else {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                    "}";
                        }
                    }


                }else if (comm.equals("myparameter")) {

                    //http = new HttpPost("http://localhost:9080/myweb1/getjsondata");

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

                    functions.log(logger, ss);
                    StringEntity entity = new StringEntity(ss,StandardCharsets.UTF_8);
                    http.setEntity(entity);

                    JsonElement el = functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")) {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_oksetparameters")+"\"\n" +
                                    "}";
                        } else {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                    "}";
                        }
                    }


                }else if (comm.equals("mypasswordre")) {
                    String userr =  functions.requestgetParameter(request, "user");
                    String ss = "  {\n  \"command\": \"resetpassword\",\n" +
                            "  \"user\": \"" +  userr + "\"\n}";
                    functions.log(logger, ss);
                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el = functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")) {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_okresetpassword")+"\"\n" +
                                    "}";
                        } else {
                            ss2 = "{\n" +
                                    "\"mess\":\"message\",\n" +
                                    "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                    "}";
                        }
                    }
                }else if (comm.equals("getcasco")) {
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
                    functions.log(logger, ss);

                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el =  functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        System.out.println("11111111111111111111111111111111111111");
                    }
                }else if (comm.equals("getliability")) {
                    String ss = "  {\n  \"command\": \"getliability\"";
                    if (userid!=null)  ss+=",\n  \"userid\": \"" + userid + "\"" ;

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
                    functions.log(logger, ss);

                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el =  functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")){

                            JsonArray ar=ob.getAsJsonArray("proposals");

                            String s1="<div style='display:flex;width:830px;margin:auto'><div class='myfont14black'>"+tit.gettitle0("_all")+ar.size()+tit.gettitle0("_proposalbenefits")+"</div>";

                            s1+="<div style='width:100%'></div><div><select dir='rtl' class='myselect830' onchange='changeselect830(this)'><option value='0' selected>"+tit.gettitle0("_sortname")+"</option><option value='1'>"+tit.gettitle0("_sortprice1")+"</option><option value='2'>"+tit.gettitle0("_sortprice2")+"</option></select><ii class='fa fa-chevron-down'></ii></div></div>";

                            s1+="<div id='container830'>";
                            for (int i=0;i<ar.size();i++){
                                ob=ar.get(i).getAsJsonObject();
                                String[] price2=functions.jsonget(ob, "price").split("_");
                                String nam=functions.jsonget(ob, "providername");
                                s1+="<div class='my830' pric='"+price2[0]+"' nam='"+nam+"'>";

                                String lim = functions.jsonget(ob, "limit")+"/"+functions.jsonget(ob, "franchise");

                                s1+="<div class='my830b'><div class='my830a'><img style='margin: auto;' src='icons/"+nam+".png'/></div><div class='myfont14capsgray'>"+tit.gettitle0("_limit_franchise")+"</div><div style='myfont14capsblack'>"+lim+"</div></div>";
                                //s1+="<div style='display: inline-block;width: 4%;vertical-align: center;height:80%;border:1px solid #cccccc'></div>";
                                s1+="<div class='my830c'><div class='myfont14capsgray'>"+tit.gettitle0( "_additionbenefits")+"</div>";
                                JsonArray ar2=ob.getAsJsonArray("benefits");
                                for (int j=0;j<ar2.size();j++){
                                    s1+="<div class='myfont14black'><img src='icons/gift.svg'/>"+ar2.get(j).getAsString()+"</div>";
                                }
                                s1+="<div style='text-align:center'><a href='#'>"+tit.gettitle0("_showalldetals")+"</a></div></div>";
                                //s1+="<div style='display: inline-block;width: 4%;vertical-align: center;height:80%;border:1px solid #cccccc'></div>";
                                s1+="<div class='my830b'><input type='button' class='btn mybutton830' value='"+tit.gettitle0("_bay")+"'>";
                                s1+="<div class='myfont14capsgray'>"+tit.gettitle0("_liabilityprice")+"</div>";

                                String price0="";String price1="";
                                price0=price2[0];
                                if (price2.length>1) price1=tit.gettitle0("_"+price2[1]);
                                s1+="<div class='myfont19capsblue'>"+price0+price1+"</div>";
                                s1+="</div>";

                                s1+="</div>";
                            }

                            s1+="</div>";

                            String txt0="<div><img src='icons/usericon2.svg'/>&nbsp;"+functions.requestgetParameter(request,"tnamefirstlat")+"&nbsp;"+functions.requestgetParameter(request,"tnamelastlat")+"("+tit.gettitle0("_me")+")</div>";

                            int k=1;
                            if (!functions.requestgetParameter(request,"tforwho").equals("forme")) {k++;
                                txt0 += "<div><img src='icons/usericon2.svg'/>&nbsp;" + functions.requestgetParameter(request, "t2namefirstlat") + "&nbsp;" + functions.requestgetParameter(request, "t2namelastlat") + "</div>";
                            }
                            txt0="<div><span class='myfont14capsblack'>"+tit.gettitle0("_liabilitypersons")+"("+tit.gettitle0("_all")+"&nbsp;"+k+")</span></div>"+txt0;
                            String txt1="<div><span class='myfont14capsblack'>"+tit.gettitle0("_carnumber")+"</span>:"+functions.requestgetParameter(request, "tcarnumber")+"</div>";

                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_carvin")+"</span>:"+functions.requestgetParameter(request, "tcarvin")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_marca")+"</span>:"+functions.requestgetParameter(request, "tmarca")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_model")+"</span>:"+functions.requestgetParameter(request, "tmodel")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_year")+"</span>:"+functions.requestgetParameter(request, "tyear")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_liabilitylimit1")+"</span>:"+functions.requestgetParameter(request, "tliabilitylimit")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_liabilityperiod")+"</span><br>"+functions.requestgetParameter(request, "tdate1")+"&nbsp;&nbsp;-&nbsp;&nbsp;"+functions.requestgetParameter(request, "tdate2")+"</div>";
                            txt1+="<div><span class='myfont14capsblack'>"+tit.gettitle0("_paymentschedule")+"</span>:"+tit.gettitle0("_"+functions.requestgetParameter(request, "tpaymentschedule"))+"</div>";

                            ss2="{\n" +
                                    "\"txt0\":\""+txt0+"\",\n" +
                                    "\"txt1\":\""+txt1+"\",\n" +
                                    "\"txt\":\""+s1+"\"\n" +
                                    "}";
                            System.out.println(ss2.replace("</div></div>","</div></div>\n"));
                        }else  ss2 = "{\n" +
                                "\"mess\":\"message\",\n" +
                                "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                "}";
                    }
                }else if (comm.equals("getpersondata")) {
                    String ss = "  {\n  \"command\": \"getpersondata\",\n  \"personal_n\": \"" + request.getParameter("t2personal_n") + "\"" ;
                    if (userid!=null)  ss+=",\n  \"userid\": \"" + userid + "\"" ;
                    ss+="\n}";

                    functions.log(logger, ss);

                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el =  functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")){
                            ss2=ob.toString();
                        }else  ss2 = "{\n" +
                                "\"mess\":\"message\",\n" +
                                "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                "}";

                    }
                }else if (comm.equals("getcardata")) {
                    String ss = "  {\n  \"command\": \"getcardata\",\n  \"carnumber\": \"" + request.getParameter("tcarnumber") + "\"" ;
                    if (userid!=null)  ss+=",\n  \"userid\": \"" + userid + "\"" ;
                    ss+="\n}";

                    functions.log(logger, ss);

                    StringEntity entity = new StringEntity(ss);
                    http.setEntity(entity);
                    JsonElement el =  functions.request(http);
                    JsonObject ob=el.getAsJsonObject();
                    if (el==null){

                    }else {
                        String res = functions.jsonget(ob, "result");
                        if (res.equals("ok")){
                            ss2=ob.toString();
                        }else  ss2 = "{\n" +
                                "\"mess\":\"message\",\n" +
                                "\"txt\":\""+tit.gettitle0("_" + res) +"\"\n" +
                                "}";
                    }
                }

                out.println(ss2);
            }catch(Exception e){
                e.printStackTrace();
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
