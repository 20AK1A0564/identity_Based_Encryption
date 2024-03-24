<%@ page import="java.sql.*"%>
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
  int count = 0;
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
  PreparedStatement ps=con.prepareStatement("select * from file1");
   ResultSet rs=ps.executeQuery();

  
    while(rs.next()) {
      count++;
                }
    //out.print(count);

         
      } 
	  catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
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
				<li class="current"><a href="admin_view2.jsp"><b>GROUP MANAGER</b></a></li>
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
    <div style="position:absolute; left:300px;  top:50px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User Data Details</font></em></strong> 
        <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center" >
          <tr> 
            <td bgcolor="#CCFFFF"><font face="Times New Roman"  size="+1"><strong>Total 
              No Of Data </strong></font></td>
            <td><input type="text" value="<%=count%>"></td>
          </tr>
        </table>
      </form>
    </div>
  </div>  
        <!-- Primary content area end -->
      </div>
            <div class="cleaner">
			
			 <div id="content_area_top">
		</div>
   
  
<div class="box"> <br>
  <br>
  <br>
  <br>
  <br>
  <div style="position:absolute; left:236px;  top:10px;"> </div>
</div>
<!-- End Of Content area top -->
        
      
                
    <div style="position:absolute; left:126px;  top:270px;"> 
	   <img src="images/Best-Cloud-Storage.jpg" width="220" height="200"></div>      
 <div style="position:absolute; left:706px;  top:270px;"> 
	   <img src="images/Best-Cloud-Storage.jpg" width="220" height="200"></div>       

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>
