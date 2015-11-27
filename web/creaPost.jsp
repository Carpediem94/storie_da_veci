<%-- 
    Document   : creaPost
    Created on : 22-nov-2015, 8.11.39
    Author     : Berta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.html" %>
        <script src="js/registrazione.js"></script>
        <title>Crea Post</title>
    </head>
    <%! private DBManager manager; %>
        <%! 
            public void init() throws ServletException {
                // inizializza il DBManager dagli attributi di Application
                this.manager = (DBManager)super.getServletContext().getAttribute("dbmanager");
                //System.out.println("DBManager attivato\n");
            } 
        %>
        <%
            String sql = "SELECT * "
                + "FROM carpediem.Categoria C";
            ResultSet rs = manager.getData(sql);
        %>
        
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="panel-chiaro panel panel1 panel-default">
                        <div class="panel1 panel-heading">
                            CreatePost Form
                        </div>
                        <div class="panel1 panel-body">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <form method="post" action="creaPost" id="crea">
                                        <table>
                                            <tr>
                                                <td>
                                                    <b>Categoria:</b>
                                                </td>
                                                <td>
                                                    <select class="categoria">
                                                        <% while(rs.next()) { %>
                                                            <option  id="<%=rs.getString("id_cat")%>">
                                                                <%= rs.getString("nome") %>
                                                            </option>
                                                        <% } %>
                                                    </select>
                                                </td>
                                                <td class="cat">
                                                    <input type="text" name="categoria" value="1">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Titolo:</b>
                                                </td>
                                                <td>
                                                    <input type="text" name="titolo" maxlength="50" required>          
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Testo:</b>
                                                </td>
                                                <td>
                                                    <textarea rows="4" cols="50" name="testo" required></textarea>          
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <input type="submit" value="Crea Post">
                                                </td>
                                            </tr>
                                        </table>
                                    </form>              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>