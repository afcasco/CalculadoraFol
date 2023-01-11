<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
Salari mensual: ${severance.salariMensual}
<br>
Import paga extra: ${severance.importPagaExtra}
<br>
Dies per any a cobrar: ${severance.dies}
<br>
Maxim mesos indemnització: ${severance.limit}
<br>

<h3>Resultats:</h3>
<hr>
<ul>
    <li>Indemnització -
        <br>Indemnització total:
        <br><b>${severance.indemnitzacio}</b>
        <br><br>
    </li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>
