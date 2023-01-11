package dev.afcasco.entitty;

import java.text.DecimalFormat;

@SuppressWarnings("unused")
public class Payroll {

    private double salariBase;
    private double complement;
    private double horesExtres;
    private double irpf;
    private String indefinit;

    private double totalMeritat;
    private double BCC;
    private double BCP;
    private double BHE;
    private double BIRF;
    private double quotaContingenciesComunes;
    private double quotaAtur;
    private double quotaFP;
    private double quotaHoresExtra;
    private double retencioIrpf;
    private double totalDeduir;
    private double totalPercebre;

    public void setSalariBase(double salariBase) {
        this.salariBase = salariBase;
    }

    public void setComplement(double complement) {
        this.complement = complement;
    }

    public void setHoresExtres(double horesExtres) {
        this.horesExtres = horesExtres;
    }

    public void setIrpf(double irpf) {
        this.irpf = irpf;
    }

    public double getTotalMeritat() {
        return totalMeritat;
    }

    public void setTotalMeritat(double totalMeritat) {
        this.totalMeritat = totalMeritat;
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

    public double getBHE() {
        return BHE;
    }

    public void setBHE(double BHE) {
        this.BHE = BHE;
    }

    public double getBIRF() {
        return BIRF;
    }

    public void setBIRF(double BIRF) {
        this.BIRF = BIRF;
    }

    public double getQuotaContingenciesComunes() {
        return quotaContingenciesComunes;
    }

    public void setQuotaContingenciesComunes(double quotaContingenciesComunes) {
        this.quotaContingenciesComunes = quotaContingenciesComunes;
    }

    public double getQuotaAtur() {
        return quotaAtur;
    }

    public void setQuotaAtur(double quotaAtur) {
        this.quotaAtur = quotaAtur;
    }

    public double getQuotaFP() {
        return quotaFP;
    }

    public void setQuotaFP(double quotaFP) {
        this.quotaFP = quotaFP;
    }

    public double getQuotaHoresExtra() {
        return quotaHoresExtra;
    }

    public void setQuotaHoresExtra(double quotaHoresExtra) {
        this.quotaHoresExtra = quotaHoresExtra;
    }

    public double getRetencioIrpf() {
        return retencioIrpf;
    }

    public void setRetencioIrpf(double retencioIrpf) {
        this.retencioIrpf = retencioIrpf;
    }

    public double getTotalDeduir() {
        return totalDeduir;
    }

    public void setTotalDeduir(double totalDeduir) {
        this.totalDeduir = totalDeduir;
    }

    public double getTotalPercebre() {
        return totalPercebre;
    }

    public void setTotalPercebre(double totalPercebre) {
        this.totalPercebre = totalPercebre;
    }

    public Payroll() {
    }

    public double getSalariBase() {
        return salariBase;
    }

    public void setSalariBase(float salariBase) {
        this.salariBase = salariBase;
    }

    public double getComplement() {
        return complement;
    }

    public void setComplement(float complement) {
        this.complement = complement;
    }

    public double getHoresExtres() {
        return horesExtres;
    }

    public void setHoresExtres(float horesExtres) {
        this.horesExtres = horesExtres;
    }

    public double getIrpf() {
        return irpf;
    }

    public void setIrpf(float irpf) {
        this.irpf = irpf;
    }

    public String getIndefinit() {
        return indefinit;
    }

    public void setIndefinit(String indefinit) {
        this.indefinit = indefinit;
    }


    public void calculate() {
        totalMeritat=salariBase+complement+horesExtres;
        BCC=salariBase+((salariBase*2)/12)+complement;
        BCP=BCC+horesExtres;
        BHE=horesExtres;
        BIRF=salariBase+complement+horesExtres;
        quotaContingenciesComunes=(BCC*4.7)/100;
        if(indefinit.equalsIgnoreCase("si")){
            quotaAtur=(BCP*1.55)/100;
        } else {
            quotaAtur=(BCP*1.60)/100;
        }
        quotaFP=(BCP*0.10)/100;
        quotaHoresExtra=(BHE*4.7)/100;
        retencioIrpf=BIRF*(irpf/100);
        totalDeduir=quotaContingenciesComunes+quotaAtur+quotaFP+retencioIrpf+quotaHoresExtra;
        totalPercebre=totalMeritat-totalDeduir;
        this.roundDecimals();
    }



    public void roundDecimals(){
        DecimalFormat df = new DecimalFormat("#.##");
        totalMeritat = Double.parseDouble(df.format(totalMeritat));
        BCC = Double.parseDouble(df.format(BCC));
        BCP = Double.parseDouble(df.format(BCP));
        BHE = Double.parseDouble(df.format(BHE));
        BIRF = Double.parseDouble(df.format(BIRF));
        quotaContingenciesComunes = Double.parseDouble(df.format(quotaContingenciesComunes));
        quotaAtur = Double.parseDouble(df.format(quotaAtur));
        quotaFP = Double.parseDouble(df.format(quotaFP));
        quotaHoresExtra = Double.parseDouble(df.format(quotaHoresExtra));
        retencioIrpf = Double.parseDouble(df.format(retencioIrpf));
        totalDeduir = Double.parseDouble(df.format(totalDeduir));
        totalPercebre=Double.parseDouble(df.format(totalPercebre));
    }
}
