package dev.afcasco.entitty;

import java.text.DecimalFormat;

public class Quitzanza {

    private double salariBase;
    private double complement;
    private double importPagaExtra;
    private int diesTreballatsPagaDesembre;
    private int diesTreballatsPagaJuny;
    private int diesTreballatsMesEnCurs;
    private double importPagaDesembre;
    private double importPagaJuny;
    private double importVacancesNoGaudit;
    private double salariMesEnCurs;
    private double resultat;

    private double salariMenusal;
    private double salariDiariRM;
    private double salariDiariCI;



    public Quitzanza() {
    }

    public double getSalariBase() {
        return salariBase;
    }

    public void setSalariBase(double salariBase) {
        this.salariBase = salariBase;
    }

    public double getComplement() {
        return complement;
    }

    public void setComplement(double complement) {
        this.complement = complement;
    }

    public double getImportPagaExtra() {
        return importPagaExtra;
    }

    public void setImportPagaExtra(double importPagaExtra) {
        this.importPagaExtra = importPagaExtra;
    }

    public int getDiesTreballatsPagaDesembre() {
        return diesTreballatsPagaDesembre;
    }

    public void setDiesTreballatsPagaDesembre(int diesTreballatsPagaDesembre) {
        this.diesTreballatsPagaDesembre = diesTreballatsPagaDesembre;
    }

    public int getDiesTreballatsPagaJuny() {
        return diesTreballatsPagaJuny;
    }

    public void setDiesTreballatsPagaJuny(int diesTreballatsPagaJuny) {
        this.diesTreballatsPagaJuny = diesTreballatsPagaJuny;
    }

    public double getImportPagaDesembre() {
        return importPagaDesembre;
    }

    public void setImportPagaDesembre(double importPagaDesembre) {
        this.importPagaDesembre = importPagaDesembre;
    }

    public double getImportPagaJuny() {
        return importPagaJuny;
    }

    public void setImportPagaJuny(double importPagaJuny) {
        this.importPagaJuny = importPagaJuny;
    }

    public double getImportVacancesNoGaudit() {
        return importVacancesNoGaudit;
    }

    public void setImportVacancesNoGaudit(double importVacancesNoGaudit) {
        this.importVacancesNoGaudit = importVacancesNoGaudit;
    }

    public double getSalariMenusal() {
        return salariMenusal;
    }

    public void setSalariMenusal(double salariMenusal) {
        this.salariMenusal = salariMenusal;
    }

    public double getSalariDiariRM() {
        return salariDiariRM;
    }

    public void setSalariDiariRM(double salariDiariRM) {
        this.salariDiariRM = salariDiariRM;
    }

    public double getSalariDiariCI() {
        return salariDiariCI;
    }

    public void setSalariDiariCI(double salariDiariCI) {
        this.salariDiariCI = salariDiariCI;
    }

    public int getDiesTreballatsMesEnCurs() {
        return diesTreballatsMesEnCurs;
    }

    public void setDiesTreballatsMesEnCurs(int diesTreballatsMesEnCurs) {
        this.diesTreballatsMesEnCurs = diesTreballatsMesEnCurs;
    }

    public double getSalariMesEnCurs() {
        return salariMesEnCurs;
    }

    public void setSalariMesEnCurs(double salariMesEnCurs) {
        this.salariMesEnCurs = salariMesEnCurs;
    }

    public double getResultat() {
        return resultat;
    }

    public void setResultat(double resultat) {
        this.resultat = resultat;
    }

    public void calculate() {
        salariMenusal = salariBase +complement;
        importPagaDesembre = ((salariBase + complement) * diesTreballatsPagaDesembre) / 365;
        importPagaJuny = ((salariBase + complement) * diesTreballatsPagaJuny) / 365;
        salariDiariRM = (salariBase + complement) / 30;
        double totalDies = (diesTreballatsPagaDesembre * 30.0) / 365;
        importVacancesNoGaudit = salariDiariRM * totalDies;


        salariDiariCI = ((salariBase+complement)*12)/365;
        salariMesEnCurs =salariDiariCI*diesTreballatsMesEnCurs;


        resultat = salariMesEnCurs + importPagaDesembre + importPagaJuny + importVacancesNoGaudit;
        DecimalFormat df = new DecimalFormat("#.##");
        resultat = Double.parseDouble(df.format(resultat));
        System.out.println(this);

    }
}
