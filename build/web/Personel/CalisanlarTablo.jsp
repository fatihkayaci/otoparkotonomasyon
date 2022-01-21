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
   
    <div id="kapsul">
        <header>
            <h1 style="color:white">PersonelTablo.jsp</h1>
        </header>
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
                    </tr>
              <%
                  
                try {
                        dataBase database = new dataBase();
                        ResultSet result = database.calisanKayitTablo();
                        
                        while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("kullaniciadi")+"</td>" );
                        out.print("<td>" + result.getString("sifre")+"</td>");
                        out.print("<td>" + result.getString("ad")+"</td>" );
                        out.print("<td>" + result.getString("soyad")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>" );
                        out.print("<td>" + result.getString("telefon")+"</td>");
                        out.print("<td>" + result.getString("adres")+"</td>" );
                        out.print("<td>" + result.getString("tc")+"</td>");
                        out.print("<td>" + result.getString("kullanicituru")+"</td>");
                        out.print("<tr>");

                    }

                    } catch (Exception e) {
                        System.out.println("hata"+e);
                    }
              %>



              </table>
        </div>
              
              <form action="Personel.jsp">
                  <button type="submit">İPTAL</button>
              </form>
    </div>
</div>
</body>
</html>
