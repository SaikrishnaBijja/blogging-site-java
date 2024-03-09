<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DBcon.connect();
String title = request.getParameter("title");
String blog = request.getParameter("blog");

String in= "insert into post values("+1+", '"+title+"','"+blog+"')";


DBcon.st.executeUpdate(in);

out.println("Blog Is Created");
%>
</body>
</html>