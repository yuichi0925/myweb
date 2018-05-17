<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hoge.ConnectionManager, java.sql.*, hoge.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MySQL</title>
</head>
<body>
<%
out.println("<h1>MySQLのデータを表示</h1>");
try{
	Connection con = ConnectionManager.getConnection();
	Statement smt = con.createStatement();
	ResultSet rs = smt.executeQuery("select * from account");
	while(rs.next()){
		String s = "NAME=" + rs.getString("NAME") + ",MONEY=" + rs.getString("MONEY");
		out.println(s + "<br>");
	}
	smt.close();
	con.close();
}catch(SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>

<!--
http://localhost:8080/myweb/select_sample.jsp
 -->