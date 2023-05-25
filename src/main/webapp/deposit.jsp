<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">
table{
color:red;
border-radius:10px;
border:1px solid red;
text-align:center;
}
</style>
 -->
 </head>
<body bgcolor="yellow"><center>

<!-- <h3>DEPOSITE FORM</h3>
 -->
 <form action="DepositCode.jsp" method="post">
            <fieldset>
                <legend>DEPOSITE FORM</legend>
                <table>
<center><h1>SDFC BANK</h1>
<h4>EXTRAODINARY SERVICES</h4>
<a href="sdfchome.jsp">Home</a>
<a href="new account.jsp">New Account</a>
<a href="balance.jsp">Balance</a>
<a href="deposit.jsp">Deposit</a>
<a href="withdraw.jsp">Withdraw</a>
<a href="transfer.jsp">Transfer</a>
<a href="delete.jsp">CloseA/C</a>
<a href="about.jsp">AboutUs</a></center>
<table 
align="center"
cellspacing="10px">
Account No:<input type="text" name="ac"><p></p>
Name:<input type="text" name="nm"><p></p>
Password:<input type="text" name="psd"><p></p>
Deposit Amount:<input type="text" name="da"><p></p>
<input type="submit" value="submit">
<input type="reset" value="Clear">

</center>
</table>
            </fieldset></form>
</body>
</html>