





<%@ page import="java.sql.*"%>
<%@include file="Mailer.jsp"%>

<%
String file_name=request.getParameter("file_name");
//String ownerid=request.getParameter("ownerid");
String userid=request.getParameter("userid");
String status=request.getParameter("status");


Object oa=session.getAttribute("a");
if(oa==null)
response.sendRedirect("user.jsp");
String a=oa.toString();

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("update acpowner set status=?,okey=? where file_name=? and userid=?");
ps.setString(1,status);

Random r=new Random();
int i=r.nextInt(1000);
  
ps.setString(2,i+"");
ps.setString(3,file_name);
//ps.setString(4,a);
ps.setString(4,userid);

int rf=ps.executeUpdate();
ps.close();
con.close();
if(rf>0)
{
 try {

if(status.equals("Grant"))
{
System.out.println("-------------------");
System.out.println("Owner key for File "+file_name+" is "+i);
System.out.println("-------------------");

  // mailsend("Owner key for File "+file_name+" is "+i);
}
else
{
System.out.println("-------------------");
System.out.println("access to "+userid + " on File "+file_name+" is changed to "+status);
System.out.println("-------------------");
}

        } catch (Exception ex) {
          ex.printStackTrace();
        }



%>
<center>
<h2>CRA sent the Key  to user <%=userid%> for the file <%=file_name%></h2>
<hr>
<a href=<%=request.getHeader("referer")%>>Back</a>
</center>
<%
}

}catch(Exception ex){ex.printStackTrace();}



%>
