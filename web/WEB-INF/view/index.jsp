<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title> - FolCalc -</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/1061623/pexels-photo-1061623.jpeg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100%;
            background-position: bottom left;
        }
    </style>
</head>
<body>
<h2>Calculadora fol:</h2>
<ul>
    <li><h3><a href="${pageContext.request.contextPath}/newPayroll">Conceptes nomina</a></h3></li>
    <li><h3><a href="${pageContext.request.contextPath}/newIndemnitzacio">Indemnització acomiadament</a></h3>
    </li>
    <li><h3><a href="${pageContext.request.contextPath}/newQuitanza">La quitança</a></h3></li>
    <li><h3><a href="${pageContext.request.contextPath}/newPrestacio">Prestació atur</a></h3></li>
    <li><h3><a href="${pageContext.request.contextPath}/newNaixement">Prestació paternitat</a></h3></li>
    <li><h3><a href="${pageContext.request.contextPath}/newIncapacitat">Prestació incapacitat/malaltia</a></h3></li>
</ul>
</body>
</html>