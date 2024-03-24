<%@ page  import="java.sql.*"  %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String key1=(String)session.getAttribute("key");
String key=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select  id from file1 where file_name='"+key1+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 key=rs.getString(1);
 }
 session.setAttribute("keyy",key);
response.sendRedirect("key1.jsp");
 }
 catch(Exception e1)
{
out.println(e1.getMessage());

}

%>
</body>
</html>
