<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>FOL - Indemnització</title>
    <style>
    </style>
</head>
<body>
<h2>Case data:</h2>
<br>

<h3>Tipus d'indemnitzacions:</h3>

<ul>
    <li>Acomiadament objectiu: 20 dies per any treballat. Max 12 mensualitats.</li>
    <li>Acomiadament disciplinari: no te dret a indemnització.</li>
    <li>Acomiadament col·lectiu: 20 dies per any treballat. Max 12 mensualitats.</li>
    <li>Acomiadament improcedent: 33 dies per any treballat. Max 24 mensualitats.</li>
    <li>Acomiadament procedent: la que correspongui segons s'estableixi si es acomiadament disciplinari o col·lectiu.
    </li>
</ul>
<br>
<form:form action="indemnitzacioAdded" modelAttribute="indemnitzacio">

    Salari mensual: <form:input path="salariMensual"/>
    <br><br>
    Import paga extra: <form:input path="importPagaExtra"/>
    <br><br>
    Dies per any a cobrar segons tipus acomiadament: <form:input path="dies"/>
    <br><br>
    Antiguitat (en mesos): <form:input path="antiguitat"/>
    <br><br>
    Limit mesos indemnització: <form:input path="limit"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>