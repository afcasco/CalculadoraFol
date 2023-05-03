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

    <form:form action="prestacioAdded" modelAttribute="builder">

        <div class="formElement">
            Data alta seguretat social: <form:input type="date" path="start"/>
        </div>
        <div class="formElement">
            Data baixa seguretat social: <form:input type="date" path="end"/>
        </div>
        <div class="formElement">
            BCP darrers 6 mesos (excloses hores extra): <form:input path="bcp"/>
        </div>
        <div class="formElement">
            Grup de cotització: <form:input path="grupCotitzacio"/>
        </div>
        <div class="formElement">
            Edat: <form:input path="edat"/>
        </div>
        <div class="formElement">
            IPREM: <form:input path="iprem"/>
        </div>
        <div class="formElement">
            Te fills: <form:select path="teFills">
            <form:option value="si"/>
            <form:option value="no"/>
        </form:select>

            <input class="submit" type="submit" value="Submit"/>
        </div>
    </form:form>

    <a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>
</div>
</body>
</html>