package dev.afcasco.entitty;

import java.text.DecimalFormat;

public class PrestacioIncapacitat {
    private double BCC;
    private double BCP;
    private double extresMes;
    private double extresUltimAny;
    private int duracio;

    public PrestacioIncapacitat() {
    }

    public double getBCC() {
        return BCC;
    }

    public void setBCC(double BCC) {
        this.BCC = BCC;
    }

    public double getBCP() {
        return BCP;
    }

    public void setBCP(double BCP) {
        this.BCP = BCP;
    }

    public double getExtresMes() {
        return extresMes;
    }

    public void setExtresMes(double extresMes) {
        this.extresMes = extresMes;
    }

    public double getExtresUltimAny() {
        return extresUltimAny;
    }

    public void setExtresUltimAny(double extresUltimAny) {
        this.extresUltimAny = extresUltimAny;
    }

    public int getDuracio() {
        return duracio;
    }

    public void setDuracio(int duracio) {
        this.duracio = duracio;
    }

    public double calculate(){
        if(BCC==0){
            BCC = BCP - extresMes;
        }
        double salariDiari = BCC/30;
        double result =  (((salariDiari*365)+extresUltimAny)/365)*duracio*.75;
        DecimalFormat df = new DecimalFormat("#.##");
        return Double.parseDouble(df.format(result));
    }
}
