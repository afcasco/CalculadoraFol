<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Prestació</title>
    <style>
    </style>
</head>
<body>
<h2>Dades contracte:</h2>
<br>

<form:form action="naixementAdded" modelAttribute="naixement">

    Base cotització contingencies comunes: <form:input path="BCC"/>
    <br><br>
    Numero nens nascuts: <form:input path="numeroNascuts"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>