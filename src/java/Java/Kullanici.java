package Java;


public class Kullanici {
    public static String kullaniciadi;
    public static String sifre;
    public static String ad;
    public static String soyad;
    public static String email;
    public static String telefon;
    public static String adres;
    public static String tc;
    public static String kullanicituru;
    
    public Kullanici(String kullaniciadi,String sifre,String ad, String soyad, String email, String telefon, String adres, String tc,String kullanicituru){
        this.kullaniciadi = kullaniciadi;
        this.sifre =sifre;
        this.ad =ad;
        this.soyad=soyad;
        this.email=email;
        this.telefon = telefon;
        this.adres = adres;
        this.tc=tc;
        this.kullanicituru=kullanicituru;
    }
    

    public static String getKullanicituru() {
        return kullanicituru;
    }

    public static void setKullanicituru(String kullanicitur) {
        Kullanici.kullanicituru = kullanicitur;
    }

    public static String getKullaniciadi() {
        return kullaniciadi;
    }

    public static void setKullaniciadi(String kullaniciadi) {
        Kullanici.kullaniciadi = kullaniciadi;
    }

    public static String getSifre() {
        return sifre;
    }

    public static void setSifre(String sifre) {
        Kullanici.sifre = sifre;
    }

    public static String getAd() {
        return ad;
    }

    public static void setAd(String ad) {
        Kullanici.ad = ad;
    }

    public static String getSoyad() {
        return soyad;
    }

    public static void setSoyad(String soyad) {
        Kullanici.soyad = soyad;
    }

    public static String getEmail() {
        return email;
    }

    public static void setEmail(String email) {
        Kullanici.email = email;
    }

    public static String getTelefon() {
        return telefon;
    }

    public static void setTelefon(String telefon) {
        Kullanici.telefon = telefon;
    }

    public static String getAdres() {
        return adres;
    }

    public static void setAdres(String adres) {
        Kullanici.adres = adres;
    }

    public static String getTc() {
        return tc;
    }

    public static void setTc(String tc) {
        Kullanici.tc = tc;
    }

}
