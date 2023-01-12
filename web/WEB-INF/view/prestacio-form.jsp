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

<form:form action="prestacioAdded" modelAttribute="builder">

    Data alta seguretat social: <form:input type="date" path="start"/>
    <br><br>
    Data baixa seguretat social: <form:input type="date" path="end"/>
    <br><br>
    BCP darrers 6 mesos (excloses hores extra): <form:input path="bcp"/>
    <br><br>
    Grup de cotització: <form:input path="grupCotitzacio"/>
    <br><br>
    Edat: <form:input path="edat"/>
    <br><br>
    IPREM: <form:input path="iprem"/>
    <br><br>
    Te fills: <form:select path="teFills">
    <form:option value="si"/>
    <form:option value="no"/>
    </form:select>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>