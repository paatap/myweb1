<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 4/19/19
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    System.out.println("langgggggggggggggg");
    //mypack.titles.reloadlang();

    //mypack.functions.printvars(request);
    mypack.lang lang=new mypack.lang();

%>
<%=lang.save(request)%>
<form  id="myform" name="myform" action="" method="post" >
<div style="width: 100%;float: left;">
    <input style="float: left;padding: 10px 40px;margin: 10px;" type="submit" id="load" name="load" value="load"/>
    <input style="float: left;padding: 10px 40px;margin: 10px;" type="submit" id="save" name="save" value="save"/>
</div>

<div>
    <textarea id='getxt' name='ge_GE' style="float: left;width: 33%;height: 80%;white-space: nowrap;  overflow: auto;"><%=lang.getfile("ge_GE")%></textarea>
    <textarea id='entxt' name='en_EN' style="float: left;width: 33%;height: 80%;white-space: nowrap;  overflow: auto;"><%=lang.getfile("en_EN")%></textarea>
    <textarea id='rutxt' name='ru_RU' style="float: left;width: 33%;height: 80%;white-space: nowrap;  overflow: auto;"><%=lang.getfile("ru_RU")%></textarea>
</div>
</form>


</body>
</html>
