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
String file_name=request.getParameter("key");
String data=null;
Blob file2= null,file1= null,blob=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(data,'key') from file1 where id='"+file_name+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 file2=rs.getBlob(1);
 //data=rs.getString(2);

}
byte[] bdata = file2.getBytes(1, (int)file2.length());
String data1 = new String(bdata);
//out.print(data1);

%>

 


	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b> <h1>Identity-Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="tpa2.jsp"><b>OWNER</b></a></li>
					<li><a href="auditor_view11.jsp"><b>BACK</b></a></li>
					
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
        <form name="s" action="auditor_store11.jsp" method="get" onSubmit="return valid()">
          <table align="center"  width="380">
            <tr> 
              <td height="172"><font face="Times New Roman"  size="+1"><strong>MESSAGE</strong></font></td>
              <td><textarea name="data" rows="20" cols="85" >
			<%=data1%>
			</textarea></td></td>
            </tr>
            <tr> 
              <td></td>
              <td><IMG src="images/arrow.gif" width="45" height="25"><a href="auditor_view11.jsp"><B>BACK TO OWNER NEXT DATA</B></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="store"></td>
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
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</body>
</html>