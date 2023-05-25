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
int acno=Integer.parseInt(request.getParameter("ac"));
String name=request.getParameter("nm");
String password=request.getParameter("psd");
double withdraw=Double.parseDouble(request.getParameter("wa"));
double balance=0.0;
balance=balance-withdraw;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
PreparedStatement ps=con.prepareStatement("update sdfc set amount=amount+? where acno=? and name=? and password=?");
ps.setDouble(1,balance);
ps.setInt(2,acno);
ps.setString(3,name);
ps.setString(4,password);
int i=ps.executeUpdate();
out.print("<h2>Withdraw successfully..............</h2>");
con.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>
</body>
</html>