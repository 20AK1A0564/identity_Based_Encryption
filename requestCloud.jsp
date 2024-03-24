<%@ page import="java.sql.*,hi.*,java.util.*"%>
<%@include file="Mailer.jsp"%>

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

PreparedStatement ps1=con.prepareStatement("select file_name,ownerid,userid,status,okey from acpowner where file_name=? and userid=? and ownerid=?");
ps1.setString(1,file_name);
ps1.setString(2,a);
ps1.setString(3,ownerid);
ResultSet rss=ps1.executeQuery();
boolean grant=false;
if(rss.next())
{
String acp=rss.getString(4);
if(acp.toUpperCase().equals("GRANT"))
{
grant=true;
}

}
rss.close();
if(grant)
{
Random r=new Random();
int i=r.nextInt(1000);
      
        System.out.println(i);
PreparedStatement ps=con.prepareStatement("insert into acpcloud(file_name,ownerid,userid,status,ckey) values(?,?,?,?,?)");

ps.setString(1,file_name);
ps.setString(2,ownerid);
ps.setString(3,a);
ps.setString(4,"grant");
ps.setString(5,i+"");
int rf=ps.executeUpdate();
ps.close();
con.close();
if(rf>0)
{
 try {

System.out.println("Cloud key for File "+file_name+" is "+i);
           /* mailsend("Cloud key for File "+file_name+" is "+i, "vyshnavikeerthipati@gmail.com");*/
        } catch (Exception ex) {
          ex.printStackTrace();
        }
%>
<center>
<h2>Your request is sent to CS, as per CRA's Access Control Policy key is sent </h2>

<hr>
<a href=<%=request.getHeader("referer")%>>Back</a>
</center>
<%
}
}
else
{
%>
<center>
<h2>Your request is sent to the CSP, but CSP can't issue a key for you,contact the owner</h2>
<hr>
<a href=<%=request.getHeader("referer")%>>Back</a>
</center>
<%

}
}catch(Exception ex){ex.printStackTrace();}



%>