<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheets" href="styles.css"/>
<title>Insert title here</title>
</head>
<body>

<%
DBcon.connect();

int id = Integer.parseInt(request.getParameter("id"));
String password = request.getParameter("password");

String query1="select *from users where id="+id;

ResultSet es=DBcon.st.executeQuery(query1);

if(es.next()) {
    	String i = es.getString("id");
    	String p = es.getString("password");
    	if(p.equals(password)){
    		DBcon.currentid=id;
    		response.sendRedirect("adminIndex.html");}
    	else{
    		out.println("Invalid Password");}
}else{
	out.println("No account Found");
}
%>
</body>
</html>