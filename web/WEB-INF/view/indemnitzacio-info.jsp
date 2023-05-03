<%@ page contentType="text/html;charset=UTF-8" %>
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
<a  style="background-color: #5197ff; width: fit-content; padding: 10px; border-radius: 10px; border: solid black 1px; font-weight: bold; color: white" href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>
