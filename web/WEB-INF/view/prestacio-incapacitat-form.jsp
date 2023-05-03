<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Prestació</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
</head>
<body>
<div class="main">
    <h2>Dades contracte:</h2>
    <br>

    <form:form action="incapacitatAdded" modelAttribute="incapacitat">

        <div class="formElement">
            Base cotització contingencies comunes: <form:input path="BCC"/>
        </div>
        <div class="formElement">
            Base cotització contingencies professionals: <form:input path="BCP"/>
        </div>
        <div class="formElement">
            Hores extres mes: <form:input path="extresMes"/>
        </div>
        <div class="formElement">
            Hores extres últims 12 mesos: <form:input path="extresUltimAny"/>
        </div>
        <div class="formElement">
            Duració baixa: <form:input path="duracio"/>
        </div>
        <input class="submit" type="submit" value="Submit"/>
    </form:form>

    <a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>
</div>
</body>
</html>