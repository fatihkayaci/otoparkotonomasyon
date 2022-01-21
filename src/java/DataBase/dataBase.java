package DataBase;

import java.sql.*;


import Java.*;
import java.sql.Statement;

public class dataBase {
    
    static final String DB_URL = "jdbc:mysql://localhost:3306/otopark";
    static final String USER="root";
    static final String PASSWORD="root";
    
    public static void insertCar(AracKayitlar aracKayit) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO arac_kayit(tc,ad,soyad,telefon,email,plaka,marka,renk,parkyeri) VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,AracKayitlar.getTc());
            psnt.setString(2,AracKayitlar.getAd());
            psnt.setString(3,AracKayitlar.getSoyad());
            psnt.setString(4,AracKayitlar.getTelefon());
            psnt.setString(5,AracKayitlar.getEmail());
            psnt.setString(6,AracKayitlar.getPlaka());
            psnt.setString(7,AracKayitlar.getMarka());
            psnt.setString(8,AracKayitlar.getRenk());
            psnt.setString(9,AracKayitlar.getParkyeri());
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
    public static void insertKullanici(Kullanici kullanici) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO calisanlar(kullaniciadi,sifre,ad,soyad,email,telefon,adres,tc,kullanicituru) VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,Kullanici.getKullaniciadi());
            psnt.setString(2,Kullanici.getSifre());
            psnt.setString(3,Kullanici.getAd());
            psnt.setString(4,Kullanici.getSoyad());
            psnt.setString(5,Kullanici.getEmail());
            psnt.setString(6,Kullanici.getTelefon());
            psnt.setString(7,Kullanici.getAdres());
            psnt.setString(8,Kullanici.getTc());
            psnt.setString(9,Kullanici.getKullanicituru());
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
    
    public String hesapKontrolYonetici(String kullaniciAd, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM calisanlar";
            rst = st.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getString("kullaniciadi").equals(kullaniciAd) && rst.getString("sifre").equals(sifre) && rst.getString("kullanicituru").equals("yonetici")){
                    System.out.println("YÖNETİCİ BULDU");
                    return "yonetici";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );

        }
        return "Kullanıcı bulunamadı";
    }
    
    public String hesapKontrolPersonel(String kullaniciAd, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM calisanlar";
            rst = st.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getString("kullaniciadi").equals(kullaniciAd) && rst.getString("sifre").equals(sifre) && rst.getString("kullanicituru").equals("personel")){
                    System.out.println("personel BULDU");
                    return "personel";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );

        }
        return "Kullanıcı bulunamadı";
    }
    
    public ResultSet calisanKayitTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM calisanlar";
            rst = st.executeQuery(sql);

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : " );
        }
        return rst;
    }
    public  void personelsil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM calisanlar WHERE ID='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
   public static void kullaniciGuncelle(int ID, String kAdi, String sifre, String isim, String soyIsim, String mail, String no, String adres, String tcNo, String kullaniciTipi){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            PreparedStatement sorgu = conn.prepareStatement("UPDATE calisanlar SET kullaniciadi ='" + kAdi + "', sifre='" + sifre + "', ad='" + isim + "', soyad='" +
                    soyIsim +  "', email='" + mail + "', telefon='" + no + "', adres='" + adres + "', tc='" + tcNo + "', kullanicituru='" + kullaniciTipi + "' WHERE id='" + ID + "'");
            sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("KULLANICI GÜNCELLEMEDE HATA");
        }
    } 
    public ResultSet AracKayitTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM arac_kayit";
            rst = st.executeQuery(sql);
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATAaa : " );

        }
        return rst;
    }
     public  void arackayitsil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM arac_kayit WHERE ID='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
   public static void AracGuncelle(int ID, String tc, String ad, String soyad, String telefon, String email, String plaka, String marka, String renk, String parkyeri){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            PreparedStatement sorgu = conn.prepareStatement("UPDATE arac_kayit SET tc ='" + tc + "', ad='" + ad + "', soyad='" + soyad + "', telefon='" +
                    telefon +  "', email='" + email + "', plaka='" + plaka+ "', marka='" + marka + "', renk='" + renk + "', parkyeri='" + parkyeri + "' WHERE id='" + ID + "'");
            sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("KULLANICI GÜNCELLEMEDE HATA");
        }
    } 
}
