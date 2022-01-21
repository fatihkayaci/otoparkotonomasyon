<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Java.*"%>
<%@page import="DataBase.dataBase"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="StyleSheet/AracKayitGuncelle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>ARAÇ KAYIT GÜNCELLE</h1>
    </header>
    </div> 
    
        <div id="middle">
    <form action="" method="post">
        <label class="tc">tc</label><br>
        <input class="tc" type="text" name="tc"/><br>
        <label class="tc">ad</label><br>
        <input class="tc" type="text" name="ad"/><br>
        <label class="tc">soyad</label><br>
        <input class="tc" type="text" name="soyad"/><br>
        <label class="tc">telefon</label><br>
        <input class="tc" type="text" name="telefon"/><br>
        <label class="tc1">email</label><br>
        <input class="tc1" type="text" name="email"/><br>
        <label class="tc1">plaka</label><br>
        <input class="tc1" type="text" name="plaka"/><br>
         <label class="tc1">Marka</label><br>
                <select class="tc1" name="marka">
                    <option>BMW</option>
                    <option>AUDI</option>
                    <option>TOYOTA</option>
                </select><br>
        <label class="tc1">renk</label><br>
        <input class="tc1" type="text" name="renk"/><br>
        <label class="tc2">Seri</label><br>
                 <select class="tc2" name="seri">
                    <option>A</option>
                    <option>B</option>
                    <option>C</option>
                </select><br>
        <label class="tc2">Park Yeri</label><br>
                <select class="tc2" name="parkyeri">
                    <option>a1</option>
                    <option>a2</option>
                    <option>a3</option>
                    <option>a4</option>
                    <option>a5</option>
                </select><br>
                <button class="guncelle" name="guncelle" type="submit">güncelle</button>
    </form>
    <form action="AracKayitTablo.jsp">
        <button class="iptal" type="submit">vazgeç</button>
    </form>
            
    </div>
    <%
        dataBase database = new dataBase();
        String tc =request.getParameter("tc");
        String ad =request.getParameter("ad");
        String soyad =request.getParameter("soyad");
        String telefon =request.getParameter("telefon");
        String email =request.getParameter("email");
        String plaka =request.getParameter("plaka");
        String marka =request.getParameter("marka");
        String renk =request.getParameter("renk");
        String seri =request.getParameter("seri");
        String parkyeri =request.getParameter("parkyeri");
        String guncelle = request.getParameter("guncelle");
        HttpSession oturum = request.getSession();
        
        String edit;
        if (guncelle != null) {
            edit=oturum.getAttribute("editt").toString();
            System.out.println("editt : " + edit);
                if (!tc.equals("")&&!ad.equals("")&&!soyad.equals("")&&!telefon.equals("")&&!email.equals("")&&
                    !plaka.equals("")&&!marka.equals("")&&!renk.equals("") &&!parkyeri.equals("")&& edit != null) {
                    database.AracGuncelle(Integer.valueOf(edit), tc, ad, soyad, telefon, email, plaka, marka,renk, parkyeri);
                    response.sendRedirect("AracKayitTablo.jsp");
                }
            }
    %>
</body>
</html>
