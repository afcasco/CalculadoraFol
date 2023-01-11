<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
Salari base: ${payroll.salariBase} €/mes
<br>
Complement: ${payroll.complement} €
<br>
Hores extres estructurals: ${payroll.horesExtres}
<br>
Percentatge retenció irpf: ${payroll.irpf} %
<br>
Contracte indefinit: ${payroll.indefinit}

<br><br>
<h3>Resultats:</h3>
<hr>
<ul>
    <li><b>Total meritat:</b>
        <br>Salari base + complement salarial + hores extra
        <br><b>${payroll.totalMeritat} €</b>
        <br><br>
    </li>

    <li><b>Base de cotització de contingencies comunes (BCC):</b>
        <br>Salari base + prorrata pagues extra + complement salarial
        <br><b>${payroll.BCC} €</b>
        <br><br>
    </li>

    <li><b>Base de cotització per contingencies professionals (BCP):</b>
        <br>BCC + Import hores extres del mes
        <br><b>${payroll.BCP} €</b>
        <br><br>
    </li>

    <li><b>Base de cotització per hores extra (BHE):</b>
        <br>Import d'hores extra del mes
        <br><b>${payroll.BHE} €</b>
        <br><br>
    </li>

    <li><b>Base de retenció d'IRPF (BIRF):</b>
        <br>Salari base + complement salarial conveni + hores extra
        <br><b>${payroll.BIRF} €</b>
        <br><br>
    </li>

    <li><b>Quota per contingencies comunes:</b>
        <br>BCC * (4.7/100)
        <br><b>${payroll.quotaContingenciesComunes} €</b>
        <br><br>
    </li>

    <li><b>Quota atur:</b>
        <br>Contingencies professionals (BCP) x percentatge (1.55 per contracte indefinit, 1.60 per temporal)
        <br><b>${payroll.quotaAtur} €</b>
        <br><br>
    </li>


    <li><b>Quota Formació professional:</b>
        <br>Contingencies professionals (BCP) x (0.10/100)
        <br><b>${payroll.quotaFP} €</b>
        <br><br>
    </li>

    <li><b>Quota hores extraordinaries:</b>
        <br>Força major s'aplicar un 2%, Resta hores s'aplica un 4.7%
        <br><b>${payroll.quotaHoresExtra} €</b>
        <br><br>
    </li>

    <li><b>Retenció a compte de l'impost de la renda (IRPF):</b>
        <br>BIRF * (retenció/100)
        <br><b>${payroll.retencioIrpf} €</b>
        <br><br>
    </li>

    <li><b>Total a deduir:</b>
        <br>Se suman totes les deduccions
        <br><b>${payroll.totalDeduir} €</b>
        <br><br>
    </li>

    <li><b>Total a percebre:</b>
        <br>Total meritat - Import de totes les deduccions
        <br><b>${payroll.totalPercebre} €</b>
        <br><br>
    </li>
</ul>

<br>

<a href="${pageContext.request.contextPath}/">Torna al principi</a>

</body>
</html>
