package dev.afcasco.entitty;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.DecimalFormat;
import java.time.LocalDate;

import java.time.temporal.ChronoUnit;


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

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate start;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate end;

    public LocalDate getStart() {
        return start;
    }

    public void setStart(LocalDate start) {
        this.start = start;
    }

    public LocalDate getEnd() {
        return end;
    }

    public void setEnd(LocalDate end) {
        this.end = end;
    }

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
        salariMenusal = salariBase + complement;

        LocalDate iniciAny = LocalDate.of(end.getYear(),1,1);
        diesTreballatsPagaDesembre = (int) ChronoUnit.DAYS.between(iniciAny,end) +1;
        importPagaDesembre = ((salariBase + complement) * diesTreballatsPagaDesembre) / 365;

        // TODO calcul dies paga juny
        LocalDate aComptarPagaJuny;
        if(end.getMonth().getValue() >= 7){
            aComptarPagaJuny = LocalDate.of(end.getYear(),7,1);
        } else {
            aComptarPagaJuny = LocalDate.of(end.getYear()-1,7,1);
        }
        diesTreballatsPagaJuny = (int) ChronoUnit.DAYS.between(aComptarPagaJuny,end) +1;


        importPagaJuny = ((salariBase + complement) * diesTreballatsPagaJuny) / 365;
        salariDiariRM = (salariBase + complement) / 30;
        double totalDies = (diesTreballatsPagaDesembre * 30.0) / 365;
        importVacancesNoGaudit = salariDiariRM * totalDies;


        salariDiariCI = ((salariBase + complement) * 12) / 365;

        LocalDate iniciMesEnCurs = LocalDate.of(end.getYear(), end.getMonth(), 1);
        diesTreballatsMesEnCurs = (int) ChronoUnit.DAYS.between(iniciMesEnCurs,end) +1;
        salariMesEnCurs = salariDiariCI * diesTreballatsMesEnCurs;


        resultat = salariMesEnCurs + importPagaDesembre + importPagaJuny + importVacancesNoGaudit;
        DecimalFormat df = new DecimalFormat("#.##");
        resultat = Double.parseDouble(df.format(resultat));




    }
}
