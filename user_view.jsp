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
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b><h1>Identity-Based Encryption</h1>
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

        <div id="content_area_top">
		</div>
   
  <div class="box"> <br>
    <br>
    <br>
    <br>
    <br>
    <div style="position:absolute; left:236px;  top:10px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User Registration Details</font></em></strong> 
        <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center" width="500">
          <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman"  size="+1"><strong>USER 
              NAME</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>USER 
              ID</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>MOBILE 
              NO</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>EMAIL</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong></strong></font></td>



          
</tr>
          <%
String name=null,userid=null,mobile=null,email=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select  name,userid,mobile,email from user");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 name=rs.getString(1);
  userid=rs.getString(2);
   mobile=rs.getString(3);
    email=rs.getString(4);
 //data=rs.getString(2);

 %>
          <tr> 
            <td bgcolor="#CCFFFF"> 
              <%=name%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=userid%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=mobile%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=email%>
            </td>
         <td bgcolor="#CCFFFF"> 
              <a href="revokeuser.jsp?userid1=<%=userid%>">Drop</a>
            </td>
      
       </tr>
          <%
}
%>
          <%

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