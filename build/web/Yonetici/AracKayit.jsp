<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="Java.AracKayitlar"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/AracKayit.css"/>
</head>
<body>
    
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>ARAÇ KAYIT</h1>
    </header>
    </div>    
    <div id="middle">
        <form action="" method="post" id="form"> 
            <div id="middle-left">
                <label class="sol_baslik">Kişi Bilgileri</label><br>
                <label>TC</label><br><input name="tc" type="text"/><br>
                <label>Ad</label><br><input name="ad" type="text"/><br>
                <label>Soyad</label><br><input name="soyad" type="text"/><br>
                <label>Telefon</label><br><input name="telefon" type="text"/><br>
                <label>Email</label><br><input name="email" type="text"/><br>
                <button type="submit" name="kayit" id="kayit">Kayıt</button>
            </div>
            <div id="middle-right">
                <label class="sol_baslik">Araç Bilgileri</label><br>
                <label>Plaka</label><br><input name="plaka" type="text"/><br>
                <label>Marka</label><br>
                <select name="marka">
                    <option>BMW</option>
                    <option>AUDI</option>
                    <option>TOYOTA</option>
                </select>
                <br>
                <label>Seri</label><br>
                 <select name="seri">
                    <option>A</option>
                    <option>B</option>
                    <option>C</option>
                </select>
                <br>
                <label>Renk</label><br><input name="renk" type="text"/><br>
                <label>Park Yeri</label><br>
                <select name="parkyeri">
                    <option>a1</option>
                    <option>a2</option>
                    <option>a3</option>
                    <option>a4</option>
                    <option>a5</option>
                </select>
                <br>
                
            </div>
            </form>
            <form action="Yonetici.jsp">
                <button type="submit" name="iptal" id="iptal">İptal</button>
            </form>
    </div>
        
            <%
                String tc =request.getParameter("tc");
                String ad =request.getParameter("ad");
                String soyad =request.getParameter("soyad");
                String telefon =request.getParameter("telefon");
                String email =request.getParameter("email");
                String plaka =request.getParameter("plaka");
                String marka =request.getParameter("marka");
                String renk =request.getParameter("renk");
                String parkyeri =request.getParameter("parkyeri");  
                String kaydet = request.getParameter("kayit");
                String iptal = request.getParameter("iptal");
                AracKayitlar aracKayit = new AracKayitlar(tc, ad, soyad, telefon, email, plaka, marka, renk, parkyeri);
                dataBase dt = new dataBase();
                if(kaydet != null){
                    if (!tc.equals("") && !ad.equals("")&& !soyad.equals("")&& !telefon.equals("")
                            && !email.equals("")&& !plaka.equals("")&& !marka.equals("")
                            && !renk.equals("")&& !parkyeri.equals("")) {
                        dt.insertCar(aracKayit);
                    }
                }
            %>
</body>
</html>
