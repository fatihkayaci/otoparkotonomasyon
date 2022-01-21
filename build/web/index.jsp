<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="java.sql.*"%>
<%@page import="Java.*"%>
<!DOCTYPE html>

<html>
    <head>
    <title>Otopark Otomasyonu</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="StyleSheet/Index.css"/>
</head>
<body>
    
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>OTOPARK OTOMASYONU GİRİŞ</h1>
    </header>
    </div>
    
    <div id="middle">
        <form action="Yonetici/YoneticiGiris.jsp" method="post">
            <button class="btn" type="submit">Yönetici  Giriş</button>
        </form>
        <form action="Personel/PersonelGiris.jsp" method="post">
            <button class="btn" type="submit">Personel Giriş</button>
        </form>
    </div>
</body>
</html>
