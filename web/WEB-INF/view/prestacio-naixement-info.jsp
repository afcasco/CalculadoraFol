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
    <li>BCC: ${naixement.BCC}</li>
    <li>Nou nascuts: ${naixement.numeroNascuts}</li>
</ul>
<br>


<h3>Resultats:</h3>
<hr>

<ul>
    <li>Dies cotitzats: <b>${naixement.calculate()} €</b></li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>