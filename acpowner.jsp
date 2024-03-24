<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CP-ABE</title>

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
	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div  style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b><h1Group Data Sharing In Cloud Computing On Identity Based Encryption</h1>

</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="admin_view2.jsp"><b>PKG</b></a></li>
				<li><a href="admin_view2.jsp"><b>BACK</b></a></li>
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div>
		</div>
   
  <div> 
    <div> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User View Data</font></em></strong> <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table>


          <tr> 
<td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>File name</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Owner Id</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>User Id</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Attribute</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>Status</strong></font></td>

          </tr>
          <%
String key=null,file_name=null,status=null,date1=null;
String b=(String)session.getAttribute("a");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
System.out.println("MRN");
PreparedStatement ps=con.prepareStatement("select  file_name,ownerid,userid,status from acpowner" );
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {

 file_name=rs.getString(1); 
String ownerid=rs.getString(2); 
String userid=rs.getString(3);
status=rs.getString(4);

status=status.equals("Revoke")?"Grant":"Revoke";
   String attribute="UserName";
 %>
          <tr> 
            <td bgcolor="#CCFFFF"> 
              <%=file_name%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=ownerid%>
            </td>
	  <td bgcolor="#CCFFFF"> 
              <%=userid%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=attribute%>
            </td>  
           <td bgcolor="#CCFFFF"> 
              <a href="updateacpowner.jsp?file_name=<%=file_name%>&ownerid=<%=ownerid%>&userid=<%=userid%>&status=<%=status%>"><%=status%></a>
            </td>               
          
<%
}
%>
<tr>
          <%
session.setAttribute("file_name",file_name);
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
        </table>
      </form>
    </div>
    <!-- Primary content area end -->
  </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>