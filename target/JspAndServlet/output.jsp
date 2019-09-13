<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 9/13/2019
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>This is output file</h1>
<h2>Hello my name is <%
    String fullName = request.getAttribute("name").toString();
    out.println(fullName);
%></h2>
<p>The value of 2 * 2 = <%= 2 * 2 %></p>
<p>The value of 6 * 8 = <%= 6 > 8 %></p>

<%
    for (int i=0; i<10; i++){
        out.print("<p>The value of i = "+i+"</p>");
    }

    %>
<%!
    int calLength(String string){
        return string.length();
    }
    %>

<p>The length of the string is <%= calLength("b2tech")%></p>

</body>
</html>