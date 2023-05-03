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

<form:form action="naixementAdded" modelAttribute="naixement">

    <div class="formElement">
    Base cotització contingencies comunes: <form:input path="BCC"/>
    </div>
    <div class="formElement">
    Numero nens nascuts: <form:input path="numeroNascuts"/>
    </div>
    <div class="formElement">
    <input class="submit" type="submit" value="Submit"/>
    </div>

</form:form>


<a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>
</div>
</body>
</html>