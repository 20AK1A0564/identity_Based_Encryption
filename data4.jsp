<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String dataname=(String)session.getAttribute("fn");
String msg=(String)session.getAttribute("f");
//out.print(dataname);
//out.print(msg);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("update file set auditor_data=AES_ENCRYPT('"+msg+"','key') where file_name='"+dataname+"'");
ps.executeUpdate();
response.sendRedirect("data3.jsp");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>
