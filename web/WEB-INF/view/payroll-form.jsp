<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FOL - Nomina</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">

</head>
<body>
<div class="main">
    <h2>Add payroll data:</h2>
    <br>

    <form:form action="payrollAdded" modelAttribute="pay">

    <div class="formElement">
        Salari base: <form:input path="salariBase"/>
    </div>
    <div class="formElement">
        Complement: <form:input path="complement"/>
    </div>
    <div class="formElement">
        Import hores extra: <form:input path="horesExtres"/>
    </div>
    <div class="formElement">
        Percentatge retenció IRPF: <form:input path="irpf"/>
    </div>
    <div class="formElement">
        Es contracte indefinit?: <form:input path="indefinit" placeholder="Escriu si o no"/>
    </div>
    <div class="formElement">
        <input class="submit" type="submit" value="Submit"/>
        </form:form>
    </div>
    <a class="back" href="${pageContext.request.contextPath}/">Torna al principi</a>
    </div>
</body>
</html>