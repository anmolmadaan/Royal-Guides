<%@page import="java.sql.PreparedStatement"%>
<%@page import="raj.DBinfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection c=DBinfo.con;
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");



PreparedStatement p=c.prepareStatement("insert into tourist values (?,?,?,?)");
p.setString(1,uname);
p.setString(2,name);
p.setString(3,email);
p.setString(4,phone);
p.executeUpdate();
p=c.prepareStatement("insert into login values (?,?,?)");
p.setString(1,uname);
p.setString(2,pass);
p.setString(3,"t");
p.executeUpdate();

%>
<jsp:forward page="index.html" /> 
<%
%>
</body>
</html>