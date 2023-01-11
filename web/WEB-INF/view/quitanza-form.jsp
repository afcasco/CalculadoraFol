<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Quitança</title>
    <style>
    </style>
</head>
<body>
<h2>Dades treballador:</h2>
<br>

<form:form action="quitanzaAdded" modelAttribute="quitanza">

    Salari base: <form:input path="salariBase"/>
    <br><br>
    Complement: <form:input path="complement"/>
    <br><br>
    Dies treballats any en curs (paga desembre): <form:input path="diesTreballatsPagaDesembre"/>
    <br><br>
    Dies treballats des de 1 de juliol d'any anterior (paga juny): <form:input path="diesTreballatsPagaJuny"/>
    <br><br>
    Dies treballats mes en curs: <form:input path="diesTreballatsMesEnCurs"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>