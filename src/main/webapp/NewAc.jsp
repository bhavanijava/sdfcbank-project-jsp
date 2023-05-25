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
<%String acno=request.getParameter("ac");
String name=request.getParameter("nm");
String pd=request.getParameter("psd");
String cd=request.getParameter("cp");
String amount=request.getParameter("amt");
String address=request.getParameter("ad");
String mobile=request.getParameter("mn");

	String password=pd;

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
PreparedStatement ps=con.prepareStatement("insert into sdfc values(?,?,?,?,?,?)");
ps.setString(1,acno);
ps.setString(2,name);
ps.setString(3,password);
ps.setString(4,amount);
ps.setString(5,address);
ps.setString(6,mobile);

int i=ps.executeUpdate();
out.print("<h1>New Account created.......</h1>");
con.close();




}
catch(Exception ex)
{
	out.print(ex);
}

%>
</body>
</html>