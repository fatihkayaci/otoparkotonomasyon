<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase"%>
<%@page import="java.sql.*"%>
<%@page import="Java.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="StyleSheet/KayitTablo.css"/>
    <title>JSP Page</title>
</head>
<body>
    
    <img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>KAYITLI ARAÇ TABLOSU</h1>
    </header>
    </div>  
        <div id="middle">
                 <table id="personel_tablo">
                    <tr>
                        <th>tc</th>
                        <th>ad</th>
                        <th>soyad</th>
                        <th>telefon</th>
                        <th>email</th>
                        <th>plaka</th>
                        <th>marka</th>
                        <th>renk</th>
                        <th>parkyeri</th>
                        <th>güncelle</th>
                    </tr>
<%
                  dataBase database = new dataBase();
                        ResultSet result = database.AracKayitTablo();

               while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("tc")+"</td>" );
                        out.print("<td>" + result.getString("ad")+"</td>");
                        out.print("<td>" + result.getString("soyad")+"</td>" );
                        out.print("<td>" + result.getString("telefon")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>" );
                        out.print("<td>" + result.getString("plaka")+"</td>");
                        out.print("<td>" + result.getString("marka")+"</td>" );
                        out.print("<td>" + result.getString("renk")+"</td>");
                        out.print("<td>" + result.getString("parkyeri")+"</td>");
                       %>
                       <td><a href="AracKayitTablo.jsp?id=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                       <td><a href="AracKayitTablo.jsp?edit=<%= result.getString("id")%>">Güncelle</a></td>
                       <% 
                           out.print("<tr>");
                    }

                        HttpSession oturum = request.getSession(true);
                        String sil = request.getParameter("id");
                        String guncelle = request.getParameter("edit");
                        oturum.setAttribute("editt", guncelle);
                        if(sil != null){
                            database.arackayitsil(Integer.valueOf(sil));
                            //response.sendRedirect("AracKayitTablo.jsp");
                        }

                        if(guncelle != null){
                           response.sendRedirect("AracKayitGuncelle.jsp");
}
              %>

              </table>
                       
     
              <form action="Yonetici.jsp">
                  <button class="iptal" type="submit">İPTAL</button>
              </form>
       </div>        
</body>
</html>
