<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>FOL - Nomina</title>
    <style>
        .errors {
            color: red;
            font-style: italic;
        }
    </style>
</head>
<body>
<h2>Add payroll data:</h2>
<br>

<form:form action="payrollAdded" modelAttribute="pay">

    Salari base: <form:input path="salariBase"/>
    <br><br>
    Complement: <form:input path="complement"/>
    <br><br>
    Hores extra: <form:input path="horesExtres"/>
    <br><br>
    Percentatge retenció IRPF: <form:input path="irpf"/>
    <br><br>
    Es contracte indefinit? (si/no): <form:input path="indefinit"/>
    <br><br>
    <input style="border-radius: 5px" type="submit" value="Submit"/>
    <br><br>
</form:form>

</body>
</html>