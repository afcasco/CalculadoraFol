<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Quitança</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
</head>
<body>
<div class="main">
    <h2>Dades treballador:</h2>
    <br>

    <form:form action="quitanzaAdded" modelAttribute="quitanza">

        <div class="formElement">
            Salari base: <form:input   cssStyle="text-align: right; width: 121px" path="salariBase"/>
        </div>
        <div class="formElement">
            Complement: <form:input cssStyle="text-align: right; width: 121px" path="complement"/>
        </div>
        <div class="formElement">
            Data inici contracte: <form:input type="date"  path="start"/>
        </div>
        <div class="formElement">
            Data fi contracte: <form:input type="date" path="end"/>
        </div>
        <div class="formElement">
            <input class="submit" type="submit" value="Submit"/>
        </div>

    </form:form>

    <a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>
</div>
</body>
</html>