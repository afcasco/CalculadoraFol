<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>FOL - Indemnització</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
</head>
<body>
<div class="main">

    <h2>Case data:</h2>
    <div class="columns">
        <div>

            <h3>Tipus d'indemnitzacions:</h3>

            <ul>
                <li>Acomiadament objectiu: 20 dies per any treballat. Max 12 mensualitats.</li>
                <li>Acomiadament disciplinari: no te dret a indemnització.</li>
                <li>Acomiadament col·lectiu: 20 dies per any treballat. Max 12 mensualitats.</li>
                <li>Acomiadament improcedent: 33 dies per any treballat. Max 24 mensualitats.</li>
                <li>Acomiadament procedent: la que correspongui segons s'estableixi si es acomiadament disciplinari o
                    col·lectiu.
                </li>
            </ul>
        </div>
        <div>
            <form:form action="indemnitzacioAdded" modelAttribute="indemnitzacio">

            <div class="formElement">
                Salari mensual: <form:input path="salariMensual"/>
            </div>
            <div class="formElement">
                Import paga extra: <form:input path="importPagaExtra"/>
            </div>
            <div class="formElement">
                Dies per any a cobrar segons tipus acomiadament: <form:input path="dies"/>
            </div>
            <div class="formElement">
                Antiguitat (en mesos): <form:input path="antiguitat"/>
            </div>
            <div class="formElement">
                Limit mesos indemnització: <form:input path="limit"/>
            </div>
            <div class="formElement">
            </div>
            <input class="submit" type="submit" value="Submit"/>
        </div>
        </form:form>
    </div>
    <a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>

</div>
</body>
</html>