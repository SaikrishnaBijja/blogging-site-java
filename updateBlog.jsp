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

String title=request.getParameter("title");
String nt=request.getParameter("nt");
String nb=request.getParameter("nb");

String ut="update post set title='"+nt+"', blog='"+nb+"' where title='"+title+"' and id="+DBcon.currentid;

if (DBcon.st.executeUpdate(ut)>0)
	response.sendRedirect("adminIndex.html");




%>
</body>
</html>