package org.apache.jsp.Personel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DataBase.dataBase;
import java.sql.*;
import Java.*;

public final class AracKayitTablo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"StyleSheet/KayitTablo.css\"/>\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <img class=\"arka\" src=\"otopark.jpg\" alt=\"otopark\">\n");
      out.write("    \n");
      out.write("    <div class=\"baslik\">\n");
      out.write("    <header>\n");
      out.write("        <h1>KAYITLI ARAÇ TABLOSU</h1>\n");
      out.write("    </header>\n");
      out.write("    </div>  \n");
      out.write("        <div id=\"middle\">\n");
      out.write("                 <table id=\"personel_tablo\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>tc</th>\n");
      out.write("                        <th>ad</th>\n");
      out.write("                        <th>soyad</th>\n");
      out.write("                        <th>telefon</th>\n");
      out.write("                        <th>email</th>\n");
      out.write("                        <th>plaka</th>\n");
      out.write("                        <th>marka</th>\n");
      out.write("                        <th>renk</th>\n");
      out.write("                        <th>parkyeri</th>\n");
      out.write("                        <th>güncelle</th>\n");
      out.write("                    </tr>\n");

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
                       
      out.write("\n");
      out.write("                       <td><a href=\"AracKayitTablo.jsp?id=");
      out.print( result.getString("id"));
      out.write("\">Bilgileri Sil</a></td>\n");
      out.write("                       ");
 
                           out.print("<tr>");
                    }

                        String sil = request.getParameter("id");
                       if(sil != null){
                       database.arackayitsil(Integer.valueOf(sil));
                        response.sendRedirect("AracKayitTablo.jsp");
                        }

              
      out.write("\n");
      out.write("\n");
      out.write("              </table>\n");
      out.write("        </div>\n");
      out.write("              <form action=\"Personel.jsp\">\n");
      out.write("                  <button type=\"submit\">İPTAL</button>\n");
      out.write("              </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
