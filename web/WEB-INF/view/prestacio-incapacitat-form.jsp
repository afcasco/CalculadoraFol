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

<form:form action="incapacitatAdded" modelAttribute="incapacitat">

    Base cotització contingencies comunes: <form:input path="BCC"/>
    <br><br>
    Base cotització contingencies professionals: <form:input path="BCP"/>
    <br><br>
    Hores extres mes: <form:input path="extresMes"/>
    <br><br>
    Hores extres últims 12 mesos: <form:input path="extresUltimAny"/>
    <br><br>
    Duració baixa: <form:input path="duracio"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>