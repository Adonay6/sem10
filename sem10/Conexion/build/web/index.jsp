<%-- 
    Document   : index
    Created on : 3 abr 2024, 20:01:53
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conexion.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
    <thead>
        <tr>
            <th>id</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Materia</th>
        </tr>
    </thead>
    <tbody>
        <% 
            st = conexion.prepareStatement("select * from estudiante");
            rs = st.executeQuery();
            while (rs.next()) { %>
                <tr>
                    <td><%= rs.getString("id") %></td>
                    <td><%= rs.getString("apellido") %></td>
                    <td><%= rs.getString("nombre") %></td>
                    <td>
                        <a href=materias.jsp?id=<%=rs.getString("Id")%>'>Mostrar</a>
                    </td>
                </tr>
        <% } 
            conexion.close(); %>
    </body>
</html>