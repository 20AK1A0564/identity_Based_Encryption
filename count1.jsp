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
int count = 0;
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
  PreparedStatement ps2=con2.prepareStatement("select * from file1");
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

PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(data,'key'),AES_DECRYPT(auditor_data,'key') from file1");
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
    <div style="position:absolute; left:286px;  top:10px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Owner Checking Details</font></em></strong> 
        <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center" >
          <tr> 
            <td><font face="Times New Roman"  size="+1" color="#00CC33"><strong>Total 
              No Data</strong></font></td>
            <td><input type="text" value="<%=count%>" color="#00CC33" ></td>
          </tr>
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
        </table>
      </form>
    </div>
	<div style="position:absolute; left:246px;  top:150px;"> 
      
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center" >
          <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>DATA 
              NAME</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>FILE 
              UPLOAD DATE</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>DATA</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>STATUS</strong></font></td>
          </tr>
          <%
String key=null,file_name=null,status=null,date1=null;
String b=(String)session.getAttribute("a");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select id,file_name,status,date1 from file1");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 key=rs.getString(1);
  file_name=rs.getString(2);
     status=rs.getString(3);
	   date1=rs.getString(4);
 //data=rs.getString(2);

 %>
          <tr> 
            <td bgcolor="#CCFFFF"> 
              <%=file_name%>
            </td></td>
            <td bgcolor="#CCFFFF"> 
              <%=date1%>
            </td>
            <td bgcolor="#CCFFFF"> <a href="view1234.jsp?<%=file_name%>">view</a> 
            </td>
            <td bgcolor="#CCFFFF"> <font color="#CC3300"><b><blink>
              <%=status%>
              </blink></b></font> </tr>
          <%
}
%>
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
    <!-- Primary content area end -->
  </div>
            <div class="cleaner">
			
		
        </div><!-- End Of Content area top -->
        
      
                     
    <div style="position:absolute; left:26px;  top:100px;"> 
	   <img src="images/Best-Cloud-Storage.jpg" width="150" height="150"></div>      
 <div style="position:absolute; left:736px;  top:100px;"> 
	   <img src="images/Best-Cloud-Storage.jpg" width="150" height="150"></div>       
   

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>