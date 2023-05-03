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
<a style="background-color: #5197ff; width: fit-content; padding: 10px; border-radius: 10px; border: solid black 1px; font-weight: bold; color: white"  href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>