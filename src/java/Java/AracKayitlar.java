package Java;

public class AracKayitlar {
    public static String tc;
    public static String ad;
    public static String soyad;
    public static String telefon;
    public static String email;
    public static String plaka;
    public static String marka;
    public static String renk;
    public static String parkyeri;

    
    public AracKayitlar(String tc,String ad,String soyad,String telefon,String email,String plaka,String marka,String renk,String parkyeri){
        this.tc = tc;
        this.ad =ad;
        this.soyad =soyad;
        this.telefon=telefon;
        this.email=email;
        this.plaka = plaka;
        this.marka = marka;
        this.renk=renk;
        this.parkyeri=parkyeri;
    }
    public static String getTc() {
        return tc;
    }

    public static void setTc(String tc) {
        AracKayitlar.tc = tc;
    }

    public static String getAd() {
        return ad;
    }

    public static void setAd(String ad) {
        AracKayitlar.ad = ad;
    }

    public static String getSoyad() {
        return soyad;
    }

    public static void setSoyad(String soyad) {
        AracKayitlar.soyad = soyad;
    }

    public static String getTelefon() {
        return telefon;
    }

    public static void setTelefon(String telefon) {
        AracKayitlar.telefon = telefon;
    }

    public static String getEmail() {
        return email;
    }

    public static void setEmail(String email) {
        AracKayitlar.email = email;
    }

    public static String getPlaka() {
        return plaka;
    }

    public static void setPlaka(String plaka) {
        AracKayitlar.plaka = plaka;
    }

    public static String getMarka() {
        return marka;
    }

    public static void setMarka(String marka) {
        AracKayitlar.marka = marka;
    }


    public static String getRenk() {
        return renk;
    }

    public static void setRenk(String renk) {
        AracKayitlar.renk = renk;
    }

    public static String getParkyeri() {
        return parkyeri;
    }

    public static void setParkyeri(String parkyeri) {
        AracKayitlar.parkyeri = parkyeri;
    }
    
}
