<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title> - FolCalc -</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
</head>
<body>
<div class="main">
    <h2>Calculadora fol:</h2>
    <ul style="list-style: none">
        <li><h3><a href="${pageContext.request.contextPath}/newPayroll">Conceptes nomina</a></h3></li>
        <li><h3><a href="${pageContext.request.contextPath}/newIndemnitzacio">Indemnització acomiadament</a></h3>
        </li>
        <li><h3><a href="${pageContext.request.contextPath}/newQuitanza">La quitança</a></h3></li>
        <li><h3><a href="${pageContext.request.contextPath}/newPrestacio">Prestació atur</a></h3></li>
        <li><h3><a href="${pageContext.request.contextPath}/newNaixement">Prestació paternitat</a></h3></li>
        <li><h3><a href="${pageContext.request.contextPath}/newIncapacitat">Prestació incapacitat/malaltia</a></h3></li>
    </ul>
</div>
</body>
</html>