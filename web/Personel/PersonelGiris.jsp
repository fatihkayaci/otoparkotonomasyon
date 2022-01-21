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
    <link rel="stylesheet" type="text/css" href="StyleSheet/PersonelGiris.css"/>
</head>
<body>

    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>PERSONEL GİRİŞ</h1>
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
            String giris  = request.getParameter("giris");
             if(giris != null){
                      System.out.println("girddidididi");
                      if (database.hesapKontrolPersonel(KullaniciAdi, sifre).equals("personel")) {
                                response.sendRedirect("Personel.jsp");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
%>
</body>
</html>
