<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="java.sql.*"%>
<%@page import="Java.*"%>
<!DOCTYPE html>

<html>
    <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="StyleSheet/YoneticiGiris.css"/>
</head>
<body>
    
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>OTOPARK OTOMASYONU GİRİŞ</h1>
    </header>
    </div>
    <div id="middle">
        
        <form action="" method="post" id="index-form">
         
            <div><input placeholder="Kullanıcı Adı" name="KullaniciAdi" type="text" id="kullaniciInput"/></div><br>
            
            <div><input placeholder="Şifre" name="sifre" type="password" id="sifreInput"/></div><br>
            <label class="unut">Beni Unutma: </label>
            <input class="unut1" type="checkbox" name="unutma" /> 
            
            <button class="btn" type="submit" name="giris" id="girisbtn">Giriş</button>
        </form>
        <form action="../index.jsp">
            <button class="btn" type="submit" name="iptal">iptal</button>
        </form>
    </div>

<%
            dataBase database = new dataBase();
            String KullaniciAdi = request.getParameter("KullaniciAdi");
            String sifre = request.getParameter("sifre");
            String giris = request.getParameter("giris");
            session.setAttribute("Kadi", KullaniciAdi);
            
             Cookie ckMail = null;
            Cookie ckSifre = null;
            Cookie ckDurum = null;
            String name = "";
            String pass = "";
            boolean durum = request.getParameter("unutma") != null;
            
            
            
            if(giris != null && !KullaniciAdi.equals("") && !sifre.equals("")){
             ckDurum = new Cookie("durum", "true");
             ckMail = new Cookie("mail", KullaniciAdi);
             ckSifre = new Cookie("sifre", sifre);
    
    
}
         Cookie[] allCookies = request.getCookies();
         if (allCookies != null) {
                 for(Cookie cook: allCookies){
                     if(cook.getName().equalsIgnoreCase("mail")){
                         name = cook.getValue();
                     }
                     else if(cook.getName().equalsIgnoreCase("sifre")){
                         pass = cook.getValue();
                     }
                 }
             }
         
        if(allCookies != null){
             for(int i = 0; i < allCookies.length; i++){
             if(allCookies[i].getValue().contains("true")){
                 System.out.println("request.getContextPath():" + request.getContextPath());
                      response.sendRedirect("/Otopark/index.jsp/Yonetici/Yonetici.jsp");
                      break;
                  }
             else{
                 System.out.println("bulunamadi");
             }
         }
         }
            
            
            
            
            
            
                  if(giris !=null){
                      if (database.hesapKontrolYonetici(KullaniciAdi, sifre).equals("yonetici")) {
                          if(durum){
                         ckDurum.setMaxAge(1000);
                         response.addCookie(ckDurum);
                         ckMail.setMaxAge(1000);
                         response.addCookie(ckMail);
                         ckSifre.setMaxAge(1000);
                         response.addCookie(ckSifre);
                        }
                         System.out.println("YÖNETİCİ GELDİ" +request.getContextPath() );

                                response.sendRedirect("/Otopark/index.jsp/Yonetici/Yonetici.jsp");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
%>
</body>
</html>
