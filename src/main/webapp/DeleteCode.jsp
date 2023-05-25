<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int acno=Integer.parseInt(request.getParameter("an"));
String name=request.getParameter("nm");
String password=request.getParameter("psd");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
PreparedStatement ps=con.prepareStatement("delete from sdfc where acno=? and name=? and password=?");
ps.setInt(1,acno);
ps.setString(2,name);
ps.setString(3,password);
int i=ps.executeUpdate();
out.print(i+"Account deleted successfully......");
con.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>