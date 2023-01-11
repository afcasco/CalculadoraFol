<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
Salari base: ${quitanza.salariBase}
<br>


<h3>Resultats:</h3>
<hr>
<ul>

    <li>Salari mensual - ${quitanza.salariBase} + ${quitanza.complement} = ${quitanza.salariMenusal} €</li>
    <li>Salari diari (retribucions mensuals) - (${quitanza.salariMenusal} * 12) / 365 = ${quitanza.salariDiariRM} € / dia</li>
    <li>Salari diari (càlcul indemnització) - (${quitanza.salariMenusal} * 14) / 365 = ${quitanza.salariDiariCI} € / dia</li>
    <li>Dies treballats per a la paga de desembre - ${quitanza.diesTreballatsPagaDesembre} dies</li>
    <li>Dies treballats per a la paga de juny - ${quitanza.diesTreballatsPagaJuny} dies</li>
    <li>Dies treballats mes actual- ${quitanza.diesTreballatsMesEnCurs} dies</li>
    <li>Dies treballats per calcul de vacances - ${quitanza.diesTreballatsPagaDesembre} dies</li>
</ul>

<hr>

<ul>
    <li>Import quitança: <b>${quitanza.resultat} €</b></li>
</ul>

<br>
<a href="${pageContext.request.contextPath}/">Torna al principi</a>
</body>
</html>
