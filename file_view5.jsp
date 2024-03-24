<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String a=request.getParameter("name");
String b=request.getParameter("file");
File f = new File(b);

//out.print(image);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
PreparedStatement ps=con.prepareStatement("update file1 set auditor_data=AES_ENCRYPT('"+f+"','key') where file_name='"+a+"'");

ps.executeUpdate();

response.sendRedirect("user2.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>
