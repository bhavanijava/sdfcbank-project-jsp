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
String acno=request.getParameter("ac");
String name=request.getParameter("nm");
String password=request.getParameter("psd");

try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb","bdb");
  PreparedStatement ps=con.prepareStatement("select*from sdfc where acno=? and name=? and password=?");
  ps.setString(1,acno);
  ps.setString(2,name);
  ps.setString(3,password);
  ResultSet rs=ps.executeQuery();
  ResultSetMetaData rss=rs.getMetaData();
  int n=rss.getColumnCount();
  out.print("<html><body><table border='1'>");
  for(int i=1;i<=n;i++)
  
	 out.println("<td><font color=green size=3>"+"<br>"+rss.getColumnName(i));
	 out.println("<tr>");
  
  while(rs.next())
  {
	  for(int i=1;i<=n;i++)
	  
		  out.println("<td><br>"+rs.getString(i));
		  out.println("<tr>");
	  
  }
  out.print("</table></body></html>");
}
catch(Exception ex)
{
	out.print(ex);
}


%>
</body>
</html>