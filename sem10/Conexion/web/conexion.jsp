<%-- 
    Document   : conexion
    Created on : 3 abr 2024, 20:01:29
    Author     : MINEDUCYT
--%>

<%@ page language="java" import="java.sql.*" %>
<%
Connection conexion = null;
PreparedStatement st = null;
ResultSet rs = null;
Class.forName("org.mariadb.jdbc.Driver");
conexion = DriverManager.getConnection(
"jdbc:mariadb://localhost:3306/progra3", "root", "666");
%>
