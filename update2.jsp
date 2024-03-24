<%@ page import="java.sql.*"  %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT);
	 String strDateNew1 = sdf1.format(now);
String n=(String)session.getAttribute("name");
String u=(String)session.getAttribute("uid");
String a=request.getParameter("un");
String b=request.getParameter("uid");
String c=request.getParameter("pass");
String d=request.getParameter("mob");
String e=request.getParameter("eid");
//String f=request.getParameter("date");
//out.print(n);
//out.print(u);
//out.print(a);
//out.print(b);
//out.print(c);
//out.print(d);
//out.print(e);
//out.print(strDateNew1);



try
  {
  Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("update user set name='"+a+"',userid='"+b+"',pass='"+c+"',mobile='"+d+"',email='"+e+"',date='"+strDateNew1+"' where name='"+n+"' AND userid='"+u+"'");
ps.executeUpdate();

response.sendRedirect("update3.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
