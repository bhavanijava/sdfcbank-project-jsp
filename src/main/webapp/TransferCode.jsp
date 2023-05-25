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
double amount=Double.parseDouble(request.getParameter("amt"));
double balance=0.0;
balance=balance-amount;
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
  if(i==1)
  {
	int tacno=Integer.parseInt(request.getParameter("tan"));
	double balanc=0.0;
	balanc=balanc+amount;
	
	PreparedStatement pss=con.prepareStatement("update sdfc set amount=amount-? where acno=?");
	pss.setDouble(1,balance);
	pss.setInt(2,tacno);
	int j=pss.executeUpdate();
	out.print(j+"Transfer  successfully..............");



  }
   con.close();
 }
 catch(Exception ex)
 {
	out.print(ex);
 }
%>
</body>
</html>