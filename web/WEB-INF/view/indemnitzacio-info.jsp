<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
Salari mensual: ${indemnitzacio.salariMensual}
<br>
Import paga extra: ${indemnitzacio.importPagaExtra}
<br>
Dies per any a cobrar: ${indemnitzacio.dies}
<br>
Maxim mesos indemnització: ${indemnitzacio.limit}
<br>

<h3>Resultats:</h3>
<hr>
<ul>
    <li>Indemnització: <b>${indemnitzacio.indemnitzacio} €</b>
    </li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>
