<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>FOL - Indemnització</title>
    <style>
        .errors {

            font-style: italic;
        }
    </style>
</head>
<body>
<h2>Case data:</h2>
<br>

<form:form action="severanceAdded" modelAttribute="severance">

    Salari mensual: <form:input path="salariMensual"/>
    <br><br>
    Import paga extra: <form:input path="importPagaExtra"/>
    <br><br>
    Dies per any a cobrar segons tipus acomiadament: <form:input path="dies"/>
    <br><br>
    Antiguitat: <form:input path="antiguitat"/>
    <br><br>
    Limit mesos indemnització: <form:input path="limit"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

</body>
</html>