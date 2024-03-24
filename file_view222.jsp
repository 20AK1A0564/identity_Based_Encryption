<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>




<%
String keyyy=(String)session.getAttribute("keyy");
String key1=request.getParameter("key1");
Blob file2= null,file3= null,blob=null;
String data=null,auditor_data=null,dataname=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(data,'key'),AES_DECRYPT(auditor_data,'key'),file_name from file1 where id='"+keyyy+"'");
ResultSet rs=ps.executeQuery();
	
if(rs.next())
 {
 file2=rs.getBlob(1);
file3=rs.getBlob(2);

dataname=rs.getString(3);

byte[] bdata = file2.getBytes(1, (int)file2.length());
String data1 = new String(bdata);
byte[] dataa= file3.getBytes(1, (int)file3.length());
String data2 = new String(dataa);

session.setAttribute("text",data1);
session.setAttribute("text1",data2);
session.setAttribute("dataname",dataname);
response.sendRedirect("file_view333.jsp");
}
else
{
out.println("enter correct data name and key");

}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}




%>
	
