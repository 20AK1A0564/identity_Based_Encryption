<%@ page  import="java.sql.*"  %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String key1=(String)session.getAttribute("y");

String key=null;
String b=(String)session.getAttribute("a");
//out.print(key1);
//out.print(file);
//out.print(b);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select  id from file1 where userid='"+b+"' AND file_name='"+key1+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 key=rs.getString(1);
 }
 session.setAttribute("keyy",key);
response.sendRedirect("key3.jsp");
 }
 catch(Exception e1)
{
out.println(e1.getMessage());

}

%>
</body>
</html>
