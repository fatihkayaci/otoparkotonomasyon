<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Java.*"%>
<%@page import="DataBase.dataBase"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <form action="" method="post">
        <label>Kullanıcı adı</label><br>
        <input type="text" name="kullaniciadi"/><br>
        <label>Şifre</label><br>
        <input type="text" name="sifre"/><br>
        <label>Ad</label><br>
        <input type="text" name="ad"/><br>
        <label>soyad</label><br>
        <input type="text" name="soyad"/><br>
        <label>email</label><br>
        <input type="text" name="email"/><br>
        <label>telefon</label><br>
        <input type="text" name="telefon"/><br>
        <label>adres</label><br>
        <input type="text" name="adres"/><br>
        <label>tc</label><br>
        <input type="text" name="tc"/><br>
        <label>Kullanici Türü</label><br>
            <select name="kullanicitur">
                <option value="yonetici">yonetici</option>
                <option value="personel">personel</option>
            </select><br>
        <button name="guncelle" type="submit">güncelle</button>
    </form>
    <form action="CalisanlarTablo.jsp">
        <button type="submit">vazgeç</button>
    </form>
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
        String guncelle = request.getParameter("guncelle");
        HttpSession oturum = request.getSession();
        
        String edit;
        if (guncelle != null) {
            edit=oturum.getAttribute("editt").toString();
                if (!kullaniciadi.equals("")&&!sifre.equals("")&&!ad.equals("")&&!soyad.equals("")&&!email.equals("")&&
                    !telefon.equals("")&&!adres.equals("")&&!tc.equals("")&&!kullanicitur.equals("")&& edit != null) {
                    database.kullaniciGuncelle(Integer.valueOf(edit), kullaniciadi, sifre, ad, soyad, email, telefon, adres, tc, kullanicitur);
                    response.sendRedirect("CalisanlarTablo.jsp");
                }
            }
    %>
</body>
</html>
