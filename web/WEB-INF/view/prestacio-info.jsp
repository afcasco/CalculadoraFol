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
    <li>Data alta SS: ${builder.start}</li>
    <li>Data baixa SS: ${builder.end}</li>
    <li>BCP darrers 6 mesos: ${builder.bcp}</li>
</ul>
<br>


<h3>Resultats:</h3>
<hr>

<ul>
    <li>Dies cotitzats: <b>${prestacio.diesCotitzats} dies</b></li>
    <li>Prestació primers 6 mesos: <b>${prestacio.primersSisMesos} € / mes</b></li>
    <li>Prestació primers 6 mesos: <b>${prestacio.restaMesos} € / mes</b></li>
    <li>Ha cotitzat ${prestacio.diesCotitzats}, <b>te dret a ${prestacio.diesPrestacio} dies</b></li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>