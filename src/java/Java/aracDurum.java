package Java;


public class aracDurum {
    public static String parkyeri;
    public static String durum;

    public aracDurum(String parkyeri,String durum){
        this.parkyeri = parkyeri;
        this.durum = durum;
    }
    
    public static String getParkyeri() {
        return parkyeri;
    }

    public static void setParkyeri(String parkyeri) {
        aracDurum.parkyeri = parkyeri;
    }

    public static String getDurum() {
        return durum;
    }

    public static void setDurum(String durum) {
        aracDurum.durum = durum;
    }
    
    
    
}
