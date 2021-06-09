<%-- 
    Document   : alumnos
    Created on : 02-jun-2021, 16:34:29
    Author     : DAW2-PROFESOR
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #form1 { border: 2px solid red}
            
        </style>
    </head>
    <body>
        <h1>Mensajes a Alumnos</h1>
        <%
            ArrayList<String> listaGrupos = ( ArrayList<String> ) request.getAttribute("listaGrupos");
            String grupoSeleccionado = ( String ) request.getAttribute("grupoSeleccionado");
         %>
        <form id="form1" action="ServletMensajes">
            Grupo: <select name="grupo">
                <% for ( String g: listaGrupos ) {
                    String cadenaSelected = "";
                    if ( g.equals(grupoSeleccionado) ) {
                        cadenaSelected = " selected ";
                    }
                    out.println("<option value=" + g + cadenaSelected + " >" + g + "</option>" );
                }
                %>
            </select>
            <p>
                  <input type="submit" value="Seleccionar">
            </p>
            
        </form>
    </body>
</html>
