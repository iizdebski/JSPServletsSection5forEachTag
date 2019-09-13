<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>My name is ${name eq "Peter Petrenko"}</h1>
<h2>My brother name is ${student.name}</h2>
<h3>My name is ${student.name}. I am ${student.age} years old and I am from ${student.location}</h3>
<c:out value="U2 Tech"></c:out>

<c:set var = "i" value = "${10*2}"></c:set>

<c:out value="${i}"></c:out>

<p>Before: <c:out value="${i}"></c:out></p>

<c:remove var = "i"/>

<p>After: <c:out value="${i}"></c:out></p>

<a href="<c:url value = "/index.html"></c:url>">Click here</a>

</body>
</html>