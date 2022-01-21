<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="java.sql.*"%>
<%@page import="Java.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/CalisanlarTablo.css"/>
</head>
<body>
   
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>KAYITLI ARAÇ TABLOSU</h1>
    </header>
    </div> 
        <form action="" method="post">
            <div id="middle">
                 <table id="personel_tablo">
                    <tr>
                        <th>Kullanıcı adı</th>
                        <th>Şifre</th>
                        <th>ad</th>
                        <th>soyad</th>
                        <th>email</th>
                        <th>telefon</th>
                        <th>adres</th>
                        <th>tc</th>
                        <th>kullanıcı turu</th>
                        <th>güncelle</th>
                    </tr>
               <%
                  dataBase database =  new dataBase();
                  ResultSet result = database.calisanKayitTablo();
                while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("kullaniciadi")+"</td>" );
                        out.print("<td>" + result.getString("sifre")+"</td>");
                        out.print("<td>" + result.getString("ad")+"</td>");
                        out.print("<td>" + result.getString("soyad")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>");
                        out.print("<td>" + result.getString("telefon")+"</td>");
                        out.print("<td>" + result.getString("adres")+"</td>");
                        out.print("<td>" + result.getString("tc")+"</td>");
                        out.print("<td>" + result.getString("kullanicituru")+"</td>");
                       %>
                        <td><a href="CalisanlarTablo.jsp?id=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                        <td><a href="CalisanlarTablo.jsp?edit=<%= result.getString("id")%>">Güncelle</a></td>
                       <%
                        out.print("<tr>");
                    }
                           HttpSession oturum = request.getSession(true);
                        String sil = request.getParameter("id");
                       // System.out.println("sil:"+sil);
                        String guncelle = request.getParameter("edit");
                        oturum.setAttribute("editt", guncelle);
                        System.out.println("güncelle"+ guncelle);
                        if(sil != null){
                            database.personelsil(Integer.valueOf(sil));
                            //response.sendRedirect("CalisanlarTablo.jsp");
                        }

                        if(guncelle != null){
                           response.sendRedirect("KullaniciGuncelle.jsp");
}
                                                   

          
              %>



              </table>
        
        </form>
              <form action="Yonetici.jsp">
                  <button class="iptal" type="submit">İPTAL</button>
              </form>
    </div>
</div>
</body>
</html>
