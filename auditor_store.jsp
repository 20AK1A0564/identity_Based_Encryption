<%@ page  import="java.sql.*"%>
<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String da=request.getParameter("data");
String data=(String)session.getAttribute("file_name");
//out.print(da);
//out.print(data);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
PreparedStatement ps=con.prepareStatement("update file set auditor_data=AES_ENCRYPT('"+da+"','key') where file_name='"+data+"'");

ps.executeUpdate();

response.sendRedirect("audit.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
