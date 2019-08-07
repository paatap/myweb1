package mypack;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/**
 * Created by user on 4/19/19.
 */
public class lang {
    public String getfile(String nam){
        String tom=System.getProperty("catalina.base");
        int p=tom.lastIndexOf(File.separator);
        if (p>=0) tom=tom.substring(0,p);
        if (tom.contains(".IntelliJIdea")) tom="/home/opt/test";
        return functions.file2str(tom+"/lang/lang_"+nam+".properties");
    }
    public String save(HttpServletRequest request){
        //functions.printvars(request);
        String save=request.getParameter("save");
        if (save!=null&&save.equals("save")){
            System.out.println("SAVE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
            save2file(request,"ge_GE");
            save2file(request,"en_EN");
            save2file(request,"ru_RU");
            titles.reloadlang();
            return "<div id=\"saveok\" style=\"position: absolute;margin:0 50%;background-color: greenyellow;\">" +
                    "<input type=\"button\" onclick=\"document.getElementById('saveok').style.display = 'none';\" style=\"margin:20px;\" value=\"save ok\"></div>";
        }
        return "";
    }
    public void save2file(HttpServletRequest request,String nam){
        String txt=request.getParameter(nam);
        if (txt!=null&&!txt.equals("")){
            txt = new String(txt.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
            String[] s2=txt.split("\n");
            Arrays.sort(s2);
            StringBuffer buf=new StringBuffer("");
            for (int i=0;i<s2.length;i++) {
                 if (i==0) buf.append(s2[i]);
                 else buf.append("\n"+s2[i]);
            }
            String tom=System.getProperty("catalina.base");
            int p=tom.lastIndexOf(File.separator);
            if (p>=0) tom=tom.substring(0,p);
            if (tom.contains(".IntelliJIdea")) tom="/home/opt/test";
            functions.str2file(buf.toString(),tom+"/lang/lang_"+nam+".properties");
        }
    }
}
