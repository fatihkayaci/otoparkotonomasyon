<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase" %>
<%@page import="Java.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/AracYerleri.css"/>
</head>
<body>
    
<img class="arka" src="otopark.jpg" alt="otopark">
    
    <div class="baslik">
    <header>
        <h1>ARAÇ YERLERİ</h1>
    </header>
    </div> 
	
    <div id="middle">
        <form action="" method="post">
            <div id="sutun1">
            <input type="submit" value="DOLU" name="p-1" id="p1"/><br>
            <input type="submit" value="DOLU" name="p-2" id="p2"/><br>
            <input type="submit" value="DOLU" name="p-3" id="p3"/><br>
            <input type="submit" value="BOS" name="p-4" id="p4"/><br>
            <input type="submit" value="DOLU" name="p-5" id="p5"/><br>
        </div>
        <div id="sutun2">
            <input type="submit" value="BOS" name="p-6" id="p6"/><br>
            <input type="submit" value="DOLU" name="p-7" id="p7"/><br>
            <input type="submit" value="DOLU" name="p-8" id="p8"/><br>
            <input type="submit" value="BOS" name="p-9" id="p9"/><br>
            <input type="submit" value="DOLU"name="p-10"id="p10"/>
        </div>
        </form>
        <form action="Personel.jsp">
            <button type="submit">İPTAL</button>
        </form>
         <table id="personel_tablo">
                  <tr>
                      <th>Plaka Yeri</th>
                      <th>Durum</th>
                  </tr>
              </table>
        
        <!--<div id="sutun3">
            <input type="submit" value="p-11" name="p-5" /><br>
            <input type="submit" value="p-12" name="p-6" /><br>
            <input type="submit" value="p-13" name="p-7" /><br>
            <input type="submit" value="p-14" name="p-8" /><br>
            <input type="submit" value="p-15" name="p-9" /><br>
        </div>
        <div id="sutun4">
            <input type="submit" value="p-16" name="p-5" /><br>
            <input type="submit" value="p-17" name="p-6" /><br>
            <input type="submit" value="p-18" name="p-7" /><br>
            <input type="submit" value="p-19" name="p-8" /><br>
            <input type="submit" value="p-20" name="p-9" /><br>
        </div>
        <div id="sutun5">
            <input type="submit" value="p-21" name="p-5" /><br>
            <input type="submit" value="p-22" name="p-6" /><br>
            <input type="submit" value="p-23" name="p-7" /><br>
            <input type="submit" value="p-24" name="p-8" /><br>
            <input type="submit" value="p-25" name="p-9" /><br>
        </div>
        <div id="sutun6">
            <input type="submit" value="p-26" name="p-5" /><br>
            <input type="submit" value="p-27" name="p-6" /><br>
            <input type="submit" value="p-28" name="p-7" /><br>
            <input type="submit" value="p-29" name="p-8" /><br>
            <input type="submit" value="p-30" name="p-9" /><br>
        </div>-->
        
    </div>
</div>
</body>
</html>
