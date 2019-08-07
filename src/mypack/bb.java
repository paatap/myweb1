package mypack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by user on 3/29/19.
 */
@WebServlet(name = "bb")
public class bb extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("111111111111111111111");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String ss=request.getParameter("txt");


            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            String agent0=request.getHeader("user-agent").toLowerCase();
            String agent="";
            if (agent0.contains("android")) agent="android";
            else if (agent0.contains("iphone")) agent="iphone";
            out.println("<h1>" + agent0 +
                    "=<br>=*"+agent+ "*==</h1><br>");
            out.println(printvars(request));

            out.println("<form accept-charset='utf-8' action='bb' method='get' name='my_table' id='my_table'>");
            out.println("<input id='txt' name='txt'/>");
            out.println("<input type='submit' value='send'/>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    public static String printvars(HttpServletRequest request)
    {
        Enumeration ee=request.getHeaderNames();
        String sdop="";
        while (ee.hasMoreElements())
        {
            String ss=(String) ee.nextElement();
            String s2=request.getHeader(ss);
            System.out.println("h---"+ss+"--"+s2);
            sdop+=ss+"="+s2+"<br>";//"&amp;";
        }
        ee=request.getParameterNames();

        while (ee.hasMoreElements())
        {
            String ss=(String) ee.nextElement();
            String s2=request.getParameter(ss);
            sdop+=ss+"="+s2+"<br>";//"&amp;";
            System.out.println("p---"+ss+"--"+s2);
        }
        //if (!sdop.equals(""))sdop="?"+sdop;
        return sdop;
    }
}
