package dev.afcasco.entitty;

import java.text.DecimalFormat;

public class PrestacioNaixement {

    private double BCC;
    private int numeroNascuts;

    public PrestacioNaixement() {
    }

    public double getBCC() {
        return BCC;
    }

    public void setBCC(double BCC) {
        this.BCC = BCC;
    }

    public int getNumeroNascuts() {
        return numeroNascuts;
    }

    public void setNumeroNascuts(int numeroNascuts) {
        this.numeroNascuts = numeroNascuts;
    }


    public double calculate() {
        DecimalFormat df = new DecimalFormat("#.##");
        double salariDiari = BCC/30;
        double prestacioTotal;
        if(numeroNascuts>1){
            prestacioTotal = salariDiari*17*7;
        } else {
            prestacioTotal = salariDiari*16*7;
        }

        return Double.parseDouble(df.format(prestacioTotal));
    }
}
