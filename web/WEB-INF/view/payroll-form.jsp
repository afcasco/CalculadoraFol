<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Nomina</title>
    <style>
    </style>
</head>
<body>
<h2>Add payroll data:</h2>
<br>

<form:form action="payrollAdded" modelAttribute="pay">

    Salari base: <form:input  path="salariBase"/>
    <br><br>
    Complement: <form:input path="complement"/>
    <br><br>
    Import hores extra: <form:input path="horesExtres"/>
    <br><br>
    Percentatge retenció IRPF: <form:input path="irpf"/>
    <br><br>
    Es contracte indefinit?: <form:input path="indefinit" placeholder="Escriu si o no"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>