<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String da=request.getParameter("data");
String data=request.getParameter("file_name");
String data1=request.getParameter("key");
//out.print(da);
//out.print(data);
String msg="CHANGED";


File f = new File(da);

//out.print(image);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
PreparedStatement ps=con.prepareStatement("update file1 set auditor_data=AES_ENCRYPT('"+f+"','key'),status='"+msg+"' where file_name='"+data+"' AND id='"+data1+"'");

ps.executeUpdate();
response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
