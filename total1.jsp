<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
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
String b=(String)session.getAttribute("a");
int count = 0;
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
  PreparedStatement ps2=con2.prepareStatement("select * from file1 where userid='"+b+"'");
   ResultSet rs2=ps2.executeQuery();

  
    while(rs2.next()) {
      count++;
                }
    //out.print(count);

         
      } 
	  catch(Exception e3)
{
out.println(e3.getMessage());
}

 int count2 = 0;
 int count3 = 0;
String data=null,auditor_data=null;
Blob blob=null,file1=null,file2=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(data,'key'),AES_DECRYPT(auditor_data,'key') from file1 where userid='"+b+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 file1=rs.getBlob(1);
file2=rs.getBlob(2);
byte[] bdata = file1.getBytes(1, (int)file1.length());
String data1 = new String(bdata);
byte[] bdata2 = file2.getBytes(1, (int)file2.length());
String data2 = new String(bdata2);
 %>
 
          <%
		  if(data1.equals(data2))
{
count2++;
}
 else if(data1!=(data2))
 {
 count3++;
}
 else
 {
  //out.println("asdd");
  }
  
}

%>
          <%
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
				<li class="current"><a href="user2.jsp"><b>GROUP MEMBER</b></a></li>
					<li><a href="user2.jsp"><b>BACK</b></a></li>
					
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
    <div style="position:absolute; left:206px;  top:30px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Owner Checking Details</font></em></strong> 
        <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table>
          <tr> 
            <td><font face="Times New Roman"  size="+1" color="#00CC33"><strong>Total 
              No Data</strong></font></td>
            <td style="align:center"><font color=red size=5><%=count%></font></td>
          </tr>
        
	 <%--
	 <tr> 
            <td><font face="Times New Roman"  size="+1" color="#00CC33"><strong>No 
              Of Unchanged Data</strong></font></td>
            <td><input type="text" value="<%=count2%>" color="#00CC33"></td>
          </tr>
          <tr> 
            <td><font face="Times New Roman"  size="+1" color="#00CC33"><strong>No 
              Of Changed Data</strong></font></td>
            <td><input type="text" value="<%=count3%>"></td>
          </tr>
        --%>
	</table>
      </form>
    </div>
    <!-- Primary content area end -->
  </div>
            <div class="cleaner">
			
			 <div style="position:absolute; left:126px;  top:330px;"> 
			 <!--<img src="images/cloud-storage1.jpg" width="800" height="200">--></div>
			</div>
        </div><!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>