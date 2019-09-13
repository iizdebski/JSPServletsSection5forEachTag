<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table border="1">
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Location</th>
        </tr>
        <c:forEach items = "${list}" var = "student">
        <tr>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.location}</td>
        </tr>
    </c:forEach>
    </table>

</body>
</html>