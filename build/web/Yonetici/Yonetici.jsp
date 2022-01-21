<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="StyleSheet/Yonetici.css"/>
    </head>
<body>
    <%

        Cookie [] cookies = request.getCookies();

        HttpSession oturum = request.getSession();
               String mail = "";
               boolean d = oturum.getAttribute("Ymail") != null;
               if(d){
                   mail =oturum.getAttribute("Ymail").toString();
               }
if(cookies != null){
    for(int i = 0; i < cookies.length; i++){
        if(cookies[i].getName().equals("mail")){
            mail = cookies[i].getValue();
            break;
        }
    }
}
    %>
<img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>YÖNETİCİ PANELİ</h1>
    </header>
    </div>
    <div id="middle">
        <p style="color:white">HOSGELDIN : <%out.print(mail); %></p>

        <form action="AracKayit.jsp" id="middleForm">
            <button class="btn" type="submit" id="kayitBtn">Araç Kayıt Sayfası</button>
        </form>
        
        <form action="CalisanlarKayit.jsp">
            <button class="btn" type="submit" id="calisanlarKayitBtn">Çalışanlar Kayıt</button>
        </form>
        <form action="AracKayitTablo.jsp">
            <button class="btn" type="submit" id="aracCikisBtn">Araç Kayıt Tablo</button>
        </form>
        <form action="CalisanlarTablo.jsp">
            <button class="btn" type="submit" id="calisanlarTabloBtn">Çalışanlar Tablo</button>
        </form>
        <form action="../../index.jsp/">
            <button class="cikis" type="submit">Çıkış</button>
        </form>
    </div>
</div>
</body>
</html>