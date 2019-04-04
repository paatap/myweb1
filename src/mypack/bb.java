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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n" +
                    "    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n" +
                    "    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>");
            out.println("</head>");
            out.println("<body>");
            String agent0=request.getHeader("user-agent").toLowerCase();
            String agent="";
            if (agent0.contains("android")) agent="android";
            else if (agent0.contains("iphone")) agent="iphone";
            out.println("<h1>" + agent0 +
                    "=<br>=*"+agent+ "*==</h1><br>");
            out.println(printvars(request));
            out.println("<div class=\"container\">\n" +
                    "    <div class=\"row\">\n" +
                    "        <div class=\"col-lg-3 col-sm-3\">\n" +
                    "            <div class=\"well\">\n" +
                    "\n" +
                    "            </div>\n" +
                    "        </div>\n" +
                    "        <div class=\"col-lg-9 col-sm-9\">\n" +
                    "\n" +
                    "            <div class=\"col-lg-6 col-sm-6\">\n" +
                    "                <div class=\"well\">\n" +
                    "\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "\n" +
                    "            <div class=\"col-lg-6 col-sm-6\">\n" +
                    "                <div class=\"well\">\n" +
                    "\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "\n" +
                    "        </div>\n" +
                    "    </div>\n" +
                    "</div>");

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
