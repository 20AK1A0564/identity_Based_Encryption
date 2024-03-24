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

function valid()
{
var aa=document.s.key.value;
if(aa=="")
{
alert("Click Data Key and get Key");
document.s.key.focus();
return false;
}
}



</script>


</head>
<body>

<%

String file_name=request.getParameter("file_name");
session.setAttribute("y",file_name);

%>


<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div> 
        <div align="left"><font color="#FFFFFF" size="4"><storng><b><h1>Identity-Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="view12345.jsp"><b>USER</b></a></li>
					<li><a href="user2.jsp"><b>BACK</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
  
<div> <br>
  <br>
  <br>
  <br>
  <br>

  <div> 
    <div> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <strong><em><font color="#990000" size="+1" face="Times New Roman" 
	  style="text-decoration:underline">User Data</font></em></strong> <br/>
        <br>
<table>
<tr>
<td>
 <div> 
	   <img src="images/Best-Cloud-Storage.jpg" width="220" height="200"></div> 

</td>
<td>

      <form name="s" action="acpfileview20.jsp" method="get" onSubmit="return valid()">
        <table align="center"  width="380">
          <tr> 
            <td ><font face="Times New Roman"  size="+1"><strong> Enter Owner Key</strong></font></td>
            <td><input type="text" name="okey">
 
<%--<a href="view1233.jsp"><font face="Times New Roman"  size="+1" color="#CC0000">
<strong>Data 
              key?</strong></font></a>--%>

</td>
          </tr>
          <tr> 
            <td ><font face="Times New Roman"  size="+1"><strong> Enter Cloud Key</strong></font></td>
            <td><input type="text" name="ckey"> 
<%--<a href="view1233.jsp"><font face="Times New Roman"  size="+1" color="#CC0000"><strong>Data 
              key?</strong></font></a>--%>
</td>
          </tr>

          <tr> 
            <td></td>
            <td><input type="submit" value="view"></td>
          </tr>
        </table>
      </form>
    </div>
    <!-- Primary content area end -->
  </div>
  <div class="cleaner"> </div>
</div>
<!-- End Of Content area top -->
        
        </td>
<Td>    
    <div> 
	   <img src="images/Best-Cloud-Storage.jpg" width="220" height="200"></div>      

</td></tr></table>            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->


</body>
</html>