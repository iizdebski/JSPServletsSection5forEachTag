<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<h1>My name is ${name eq "Ivan Petrenko"}</h1>
<h2>My brother name ${student.name}</h2>

<h3>My name is ${student.name} and i am ${student.age} and i am from ${student.location}</h3>
<c:out value="B2 Tech"></c:out>

<c:set var = "i" value = "${10*2}"></c:set>

<p>Before: <c:out value="${i}"></c:out></p>

<c:remove var="i"/>

<p>After: <c:out value="${i}"></c:out></p>

<a href="<c:url value = "/index.html"></c:url>">Click here</a>

<c:forEach items = "${list}" var = "student">
    <p>Student Name = ${student.name}</p>
    <p>Student Age = ${student.age}</p>
    <p>Student Location = ${student.location}</p>
<hr/>
</c:forEach>

<c:out value="${fn:toLowerCase('B2 Tech')}"></c:out>
<hr/>

<c:out value="${fn:toUpperCase('B2 Tech')}"></c:out>
<hr/>

<c:out value="${fn:contains('I am the owner of B2 Tech', 'B2 Tech')}"></c:out>

<c:out value="${fn:indexOf('I am the owner of B2 Tech', 'B2 Tech')}"></c:out>
</body>
</html>