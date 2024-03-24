<%@ page import="java.sql.*"%>
<%
String file_name=request.getParameter("file_name");
String ownerid=request.getParameter("ownerid");
Object oa=session.getAttribute("a");
if(oa==null)
response.sendRedirect("user.jsp");
String a=oa.toString();

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("insert into acpowner(file_name,ownerid,userid,status,okey) values(?,?,?,?,?)");
ps.setString(1,file_name);
ps.setString(2,ownerid);
ps.setString(3,a);
ps.setString(4,"Revoke");
ps.setString(5,"0");
int rf=ps.executeUpdate();
ps.close();
con.close();
if(rf>0)
{
%>
<center>
<h2>Your request is sent to the CRA , Access Control Policy to be updated by the CRA.</h2>
<hr>
<a href=<%=request.getHeader("referer")%>>Back</a>
</center>
<%
}

}catch(Exception ex){ex.printStackTrace();}



%>