<%-- 
    Document   : materias
    Created on : 3 abr 2024, 20:31:01
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conexion.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title>
    </head>
    <body>
        <table>
    <thead>
        <tr>
            <th>id</th>
            <th>materia</th>
            <th>catedratico</th>
            <th>ciclo</th>
        </tr>
    </thead>
     <tbody>
            <% 
                String idEstudiante = request.getParameter("id");
                if (idEstudiante != null) {
                    st = conexion.prepareStatement("select * from materia where id = ?");
                    st.setString(1, idEstudiante);
                    rs = st.executeQuery();
                    
                    while (rs.next()) { %>
                        <tr>
                            <td><%= rs.getString("id") %></td>
                            <td><%= rs.getString("nombre") %></td>
                            <td><%= rs.getString("catedratico") %></td>
                            <td><%= rs.getString("ciclo") %></td>
                        </tr>
                <% }
                } 
                conexion.close(); %>
        </tbody>
         </table>
    
    
    <a href="index.jsp">Regresar</a>
</body>
</html>