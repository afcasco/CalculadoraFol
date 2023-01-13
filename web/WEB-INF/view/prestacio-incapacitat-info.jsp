<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
<ul>
    <li>BCC: ${incapacitat.BCC}</li>
    <li>Duració baixa: ${incapacitat.duracio}</li>
</ul>
<br>


<h3>Resultats:</h3>
<hr>

<ul>
    <li>Total prestació: <b>${incapacitat.calculate()} €</b></li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>