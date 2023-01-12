package dev.afcasco.entitty;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@SuppressWarnings("unused")
public class Prestacio {

    private static final int MAX_DIES_PRESTACIO = 720;
    private static final double PRIMERS_SIS_MESOS = 0.7;
    private static final double RESTA_MESOS = 0.5;


    private double baseReguladora;
    private double primersSisMesos;
    private double restaMesos;
    private int diesCotitzats;
    private int diesPrestacio;


    public Prestacio(PrestacioBuilder builder) {
        this.baseReguladora = builder.bcp / 6;
        this.primersSisMesos = baseReguladora * PRIMERS_SIS_MESOS;
        this.restaMesos = baseReguladora * RESTA_MESOS;
        this.diesCotitzats = (int) builder.start.datesUntil(builder.end).count();

        double minim = builder.iprem * 0.8 + (builder.iprem * 0.8) / 6;
        double maxim = builder.iprem * 1.75 + (builder.iprem * 1.75) / 6;

        if (primersSisMesos > maxim) {
            primersSisMesos = maxim;
        } else if (primersSisMesos < minim) {
            primersSisMesos = minim;
        }

        if (restaMesos > maxim) {
            restaMesos = maxim;
        } else if (restaMesos < minim) {
            restaMesos = minim;
        }

        if (diesCotitzats < 360) {
            diesPrestacio = 0;
        } else if (diesCotitzats < 540) {
            diesPrestacio = 120;
        } else if (diesCotitzats < 720) {
            diesPrestacio = 180;
        } else if (diesCotitzats < 900) {
            diesPrestacio = 240;
        } else if (diesCotitzats < 1080) {
            diesPrestacio = 300;
        } else if (diesCotitzats < 1260) {
            diesPrestacio = 360;
        } else if (diesCotitzats < 1440) {
            diesPrestacio = 420;
        } else if (diesCotitzats < 1620) {
            diesPrestacio = 480;
        } else if (diesCotitzats < 1800) {
            diesPrestacio = 540;
        } else if (diesCotitzats < 1980) {
            diesPrestacio = 600;
        } else if (diesCotitzats < 2160) {
            diesPrestacio = 660;
        } else {
            diesPrestacio = MAX_DIES_PRESTACIO;
        }


    }

    public double getBaseReguladora() {
        return baseReguladora;
    }

    public void setBaseReguladora(double baseReguladora) {
        this.baseReguladora = baseReguladora;
    }

    public double getPrimersSisMesos() {
        return primersSisMesos;
    }

    public void setPrimersSisMesos(double primersSisMesos) {
        this.primersSisMesos = primersSisMesos;
    }

    public double getRestaMesos() {
        return restaMesos;
    }

    public void setRestaMesos(double restaMesos) {
        this.restaMesos = restaMesos;
    }

    public int getDiesCotitzats() {
        return diesCotitzats;
    }

    public void setDiesCotitzats(int diesCotitzats) {
        this.diesCotitzats = diesCotitzats;
    }

    public int getDiesPrestacio() {
        return diesPrestacio;
    }

    public void setDiesPrestacio(int diesPrestacio) {
        this.diesPrestacio = diesPrestacio;
    }

    public static class PrestacioBuilder {
        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
        private LocalDate start;

        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
        private LocalDate end;

        private double bcp;
        private int grupCotitzacio;
        private int edat;
        private String teFills;
        private double iprem;

        public PrestacioBuilder() {
        }

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

        public double getBcp() {
            return bcp;
        }

        public void setBcp(double bcp) {
            this.bcp = bcp;
        }

        public int getGrupCotitzacio() {
            return grupCotitzacio;
        }

        public void setGrupCotitzacio(int grupCotitzacio) {
            this.grupCotitzacio = grupCotitzacio;
        }

        public int getEdat() {
            return edat;
        }

        public void setEdat(int edat) {
            this.edat = edat;
        }

        public String getTeFills() {
            return teFills;
        }

        public void setTeFills(String teFills) {
            this.teFills = teFills;
        }

        public double getIprem() {
            return iprem;
        }

        public void setIprem(double iprem) {
            this.iprem = iprem;
        }

        public Prestacio buid() {
            System.out.println(this);
            return new Prestacio(this);
        }
    }

}