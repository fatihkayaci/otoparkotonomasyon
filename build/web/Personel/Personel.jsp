<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="StyleSheet/Personel.css"/>
    </head>
<body>
<img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>PERSONEL PANELİ</h1>
    </header>
    </div>
    
    <div id="middle">
        <form action="AracKayit.jsp" id="middleForm">
            <button class="btn" type="submit" id="kayitBtn">Araç Kayıt Sayfası</button>
        </form>
        <form action="AracKayitTablo.jsp">
            <button class="btn" type="submit" id="aracCikisBtn">Araç Kayıt Tablo</button>
        </form>
        <form action="../../index.jsp">
            <button class="cikis" type="submit">Çıkış</button>
        </form>
    </div>
</div>
</body>
</html>