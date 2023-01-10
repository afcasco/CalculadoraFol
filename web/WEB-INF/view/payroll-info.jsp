<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
</head>
<body>
<h3>Dades introduides:</h3>
<hr>
<br>
Salari base: ${payroll.salariBase}
<br>
Complement: ${payroll.complement}
<br>
Hores extres estructurals: ${payroll.horesExtres}
<br>
Percentatge retenció irpf: ${payroll.irpf}
<br>
Contracte indefinit: ${payroll.indefinit}

<br><br>
<h3>Resultats:</h3>
<hr>
<ul>
    <li>Total meritat:
        <br>Salari base + complement salarial + hores extra
        <br><b>${payroll.totalMeritat}</b>
        <br><br>
    </li>

    <li>Base de cotització de contingencies comunes (BCC):
        <br>Salari base + prorrata pagues extra + complement salarial
        <br><b>${payroll.BCC}</b>
        <br><br>
    </li>

    <li>Base de cotització per contingencies professionals (BCP):
        <br>BCC + Import hores extres del mes
        <br><b>${payroll.BCP}</b>
        <br><br>
    </li>

    <li>Base de cotització per hores extra (BHE):
        <br>Import d'hores extra del mes
        <br><b>${payroll.BHE}</b>
        <br><br>
    </li>

    <li>Base de retenció d'IRPF (BIRF):
        <br>Salari base + complement salarial conveni + hores extra
        <br><b>${payroll.BIRF}</b>
        <br><br>
    </li>

    <li>Quoata per contingencies comunes:
        <br>BCC * (4.7/100)
        <br><b>${payroll.quotaContingenciesComunes}</b>
        <br><br>
    </li>

    <li>Quota atur:
        <br>Contingencies professionals (BCP) x percentatge (1.55 per contracte indefinit, 1.60 per temporal)
        <br><b>${payroll.quotaAtur}</b>
        <br><br>
    </li>


    <li>Quota Formació professional:
        <br>Contingencies professionals (BCP) x (0.10/100)
        <br><b>${payroll.quotaFP}</b>
    </li>

    <li>Quota hores extraordinaries:
        <br>Força major s'aplicar un 2%, Resta hores s'aplica un 4.7%
        <br><b>${payroll.quotaHoresExtra}</b>
        <br><br>
    </li>

    <li>Retenció a compte de l'impost de la renda (IRPF):
        <br>BIRF * (retencio/100)
        <br><b>${payroll.irpf}</b>
        <br><br>
    </li>

    <li>Total a deduir:
        <br>Se suman totes les deduccions
        <br><b>${payroll.totalDeduir}</b>
        <br><br>
    </li>

    <li>Total a percebre:
        <br>Total meritat - Import de totes les deduccions
        <br><b>${payroll.totalPercebre}</b>
        <br><br>
    </li>
</ul>

<br>

</body>
</html>
