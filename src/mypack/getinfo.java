package mypack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by user on 4/11/19.
 */
@WebServlet(name = "getinfo")
public class getinfo extends HttpServlet {
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
            out.println("<title>Server Info</title>");
            out.println("</head>");
            out.println("<body>");
out.println("<table>");
out.println("<tr>");
out.println("</tr>");out.println("<td>id</td><td>type</td><td>opid</td><td>name</td><td>status</td>");
            for (int id:EchoServer.chats.keySet()){
                mychatuser ch=EchoServer.chats.get(id);
                out.println("<tr>");

                out.println("<td>"+ch.id+"</td>");
                if (ch.type==mychatuser.operator)
                    out.println("<td>operator</td>");
                else
                    out.println("<td>user</td>");
                out.println("<td>"+ch.opid+"</td>");
                out.println("<td>"+ch.name+"</td>");
                if (ch.ses!=null&&ch.ses.isOpen())
                    out.println("<td>active</td>");
                else
                    out.println("<td>close</td>");


                out.println("</tr>");
            }
out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
