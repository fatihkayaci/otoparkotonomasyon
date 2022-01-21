<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Java.Kullanici"%>
<%@page import="DataBase.dataBase"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/Calisanlar.css"/>
    </head>
<body>
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>ÇALIŞAN KAYIT</h1>
    </header>
    </div> 
        
        <form action="" method="post" id="form"> 
            <div id="middle">
                <div class="a"><label>Kullanıcı Adı</label><br><input name="kullaniciadi" type="text"/><br></div>
                <div class="a"><label>Şifre</label><br><input name="sifre" type="text"/><br></div>
                <div class="a"><label>Ad</label><br><input name="ad" type="text"/><br></div>
                <div class="a"><label>Soyad</label><br><input name="soyad" type="text"/><br></div>
                <div class="b"><label>Email</label><br><input name="email" type="text"/><br></div>
                <div class="b"><label>Telefon</label><br><input name="telefon" type="text"/><br></div>
                <div class="b"><label>Adres</label><br><input name="adres" type="text"/><br></div>
                <div class="b"><label>Tc</label><br><input name="tc" type="text"/><br></div>
                <select name="kullanicitur">    </div>
                    <option value="yonetici">yonetici</option>
                    <option value="personel">personel</option>
                </select>
                <br>
                
                    <input class="btn" type="submit" name="kaydet" value="Kaydet"/>
                   
        </form>        
            
        
        <form action="Yonetici.jsp">
            <input type="submit" id="cikisbtn" name="cikis" value="Çıkış"/> 
        </form>
</div> 
    <%
                dataBase database = new dataBase();
                String kullaniciadi =request.getParameter("kullaniciadi");
                String sifre =request.getParameter("sifre");
                String ad =request.getParameter("ad");
                String soyad =request.getParameter("soyad");
                String email =request.getParameter("email");
                String telefon =request.getParameter("telefon");
                String adres =request.getParameter("adres");
                String tc =request.getParameter("tc");
                String kullanicitur =request.getParameter("kullanicitur");
                String kaydet = request.getParameter("kaydet");
                if(kaydet != null){
                    Kullanici kullanici = new Kullanici(kullaniciadi, sifre, ad, soyad,  email,  telefon,  adres,  tc, kullanicitur);
                    database.insertKullanici(kullanici);
                    response.sendRedirect("CalisanlarKayit.jsp");
                }
    %>
</body>
</html>
