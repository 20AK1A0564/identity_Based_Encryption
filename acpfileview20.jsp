<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>dpaas</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

</head>
<body>
<%
String data=null;
Blob file2= null,file1= null,blob=null;

String file_name=session.getAttribute("y")+"";
String okey=request.getParameter("okey");
String ckey=request.getParameter("ckey");
file_name=file_name.trim();
okey=okey.trim();
ckey=ckey.trim();
Object oa=session.getAttribute("a");
if(oa==null)
response.sendRedirect("user.jsp");
String a=oa.toString().trim();

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps1=con.prepareStatement("select file_name,ownerid,userid,status,okey from acpowner where file_name=? and userid=? and okey=? and status='Grant'");
//PreparedStatement ps1=con.prepareStatement("select file_name,ownerid,userid,status,okey from acpowner where file_name=? and userid=? and okey='512'");

ps1.setString(1,file_name);
ps1.setString(2,a);
ps1.setString(3,okey);

ResultSet rss=ps1.executeQuery();
boolean ogrant=false;
System.out.println("Owner: "+file_name+"-"+a+"-"+okey+"-"+ogrant);

if(rss.next())
{
String acp=rss.getString(4);
System.out.println("Owner: "+acp);
if(acp.toUpperCase().equals("GRANT"))
{
ogrant=true;
}

}
rss.close();
if(!ogrant)
{
%>
	<center>
	<h1>
	Sorry,Invalid Keys
	</h1>
	</center>
<%
}
else
{
ps1=con.prepareStatement("select file_name,ownerid,userid,status,ckey from acpcloud where file_name=? and userid=? and ckey=? and status='grant'");
ps1.setString(1,file_name);
ps1.setString(2,a);
ps1.setString(3,ckey);

rss=ps1.executeQuery();
boolean cgrant=false;
System.out.println("Cloud: "+file_name+"-"+a+"-"+ckey+"-"+ogrant);
if(rss.next())
{
String acp=rss.getString(4);
System.out.println("Cloud: "+acp);
if(acp.toUpperCase().equals("GRANT"))
{
cgrant=true;
}

}
rss.close();

if(!cgrant)
{
%>
	<center>
	<h1>
	Sorry,Invalid Keys
	</h1>
	</center>
<%

}
else
{







PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(auditor_data,'key'),file_name from file1 where file_name='"+file_name+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 file2=rs.getBlob(1);
file_name=rs.getString(2);

}
byte[] bdata = file2.getBytes(1, (int)file2.length());
String data1 = new String(bdata);
//out.print(data1);

%>

 


	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b><h1>Group Data Sharing In Cloud Computing On Identity Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="tpa2.jsp"><b>USER</b></a></li>
					<li><a href="file_view11.jsp"><b>BACK</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
  
  <div class="box"> <br>
    <br>
    <br>
    <br>
    <br>
    <div id="menu"> 
      <div style="position:absolute; left:6px;  top:1px;"> 
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <strong><em><font color="#990000" size="+1" face="Times New Roman" 
	  style="text-decoration:underline">User Data</font></em></strong> <br/>
          <br>
        <form name="s" action="admin_store11.jsp" method="get" onSubmit="return valid()">
          <table align="center" width="500">
            <tr> 
              <td bgcolor="#CCCCCC"><font  size="+1"><strong>USER KEY</strong></font></td>
              <td><input type="text" value="<%=okey%>" name="okey"></td>
            </tr>
            <tr> 
              <td bgcolor="#CCCCCC"><font  size="+1"><strong>DATA NAME</strong></font></td>
              <td><input type="text" value="<%=file_name%>" name="file_name"></td>
            </tr>
            <tr> 
              <td bgcolor="#CCCCCC"><font  size="+1"><strong>DATA</strong></font></td>
              <td><textarea rows="15" cols="100" name="data"><%=data1%></textarea></td>
            </tr>
            <tr>
              <td></td>
              <td><a href="file_view11.jsp"><b></b></a>&nbsp;&nbsp;&nbsp;&nbsp;<!--<input type="submit" value="Store"> --></td>
            </tr>
          </table>
        </form>
      </div>
    </div>
    <!-- Primary content area end -->
  </div>
  <div class="cleaner"> </div>
</div>
<!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->

<%

}

}
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</body>
</html>