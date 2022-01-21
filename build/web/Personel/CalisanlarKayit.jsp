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
    <div id="kapsul">
	<header>
            
	</header>
        <form action="" method="post" id="form"> 
            <div id="middle">
                <label>Kullanıcı Adı</label><br><input name="kullaniciadi" type="text"/><br>
                <label>Şifre</label><br><input name="sifre" type="text"/><br>
                <label>Ad</label><br><input name="ad" type="text"/><br>
                <label>Soyad</label><br><input name="soyad" type="text"/><br>
                <label>Email</label><br><input name="email" type="text"/><br>
                <label>Telefon</label><br><input name="telefon" type="text"/><br>
                <label>Adres</label><br><input name="adres" type="text"/><br>
                <label>Tc</label><br><input name="tc" type="text"/><br>
                <label>Kullanici Türü</label><br>
                <select name="kullanicitur">
                    <option value="yonetici">yonetici</option>
                    <option value="personel">personel</option>
                </select>
                <br>
                <div id="button-div">
                    <input  type="submit" name="kaydet" value="Kaydet"/>
                    
                </div>
            </div>
        </form>
        <form action="Personel.jsp">
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
    <script src="JavaScript/Calisanlar.js"></script>
</body>
</html>
